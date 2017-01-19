get '/math' do
  @math_questions = Question.where("tag='math'")
  erb :'math/index'
end



get '/math/:id' do
  @math_questions = Question.where("tag='math'")
  @math_question = @math_questions.find_by(id: params[:id])
  erb :'math/show'
end
