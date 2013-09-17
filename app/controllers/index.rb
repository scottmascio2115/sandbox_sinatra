# GET =====================================================

get '/' do
  puts "[LOG] Getting /"
  puts "[LOG] Params: #{params.inspect}"
  erb :index
end

get '/cool_url' do
  @name = params[:name]
  @text = params[:text]
  puts "[LOG] Getting /cool_url"
  puts "[LOG] Params: #{params.inspect}"
  erb :cool_url
end


# POST ====================================================

post '/cool_url' do
  @user_input = params[:user_input]
  puts "[LOG] Posting to /cool_url"
  puts "[LOG] Params: #{params.inspect}"
  erb :cool_url
end
