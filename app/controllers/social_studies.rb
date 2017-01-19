get '/social_studies' do
  @social_studies_questions = Question.where("tag='social studies'")
  erb :'social_studies/index'
end


get '/social_studies/:id' do
  @social_studies_questions = Question.where("tag='social studies'")
  @social_studies_question = @social_studies_questions.find_by(id: params[:id])
  erb :'social_studies/show'
end
