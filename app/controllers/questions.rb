

get '/questions' do
  @questions = Question.all
  erb :'questions/index'
end


get '/questions/ask' do
  erb :'questions/ask'
end



post '/questions' do
  @question = current_user.questions.new(params[:question])
  category = @question.tag
  if @question.save
    redirect "/#{category}/#{@question.id}"
  else
    redirect '/questions/ask'
  end
end

