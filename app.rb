require "sinatra"
require "sinatra/reloader"

get("/") do
erb(:square)
end

get("/square/new") do
erb(:square)
end

get("/square/results") do
  @square_num = params.fetch("user_number") 

  @num_after_square = params.fetch("user_number").to_f * params.fetch("user_number").to_f
 
  erb(:square_results)
end
