require "sinatra"

enable :sessions

get "/" do
  session["afazeres"] ||= []
  erb :index,:locals => {:db=>session["afazeres"]}, :layout => :layout
end

post "/" do
  session["afazeres"] << params["todo"]
  redirect "/"
end
