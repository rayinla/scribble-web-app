get '/science' do
  @science_questions = Question.where("tag='science'")
  erb :'science/index'
end


get '/science/:id' do
  science_questions = Question.where("tag='science'")
  @science_question = science_questions.find_by(id: params[:id])
  erb :'science/show'
end
