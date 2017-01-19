get '/english' do
  @english_questions = Question.where("tag='english'")
  erb :'english/index'
end

get '/english/:id' do
  @english_questions = Question.where("tag='english'")
  @english_question = @english_questions.find_by(id: params[:id])
  erb :'english/show'
end
