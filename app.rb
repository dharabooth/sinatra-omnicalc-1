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

get("/square_root/new") do
  erb(:square_root)
end

get("/square_root/results") do
  @root_num = params.fetch("user_number")

  @num_rooted = params.fetch("user_number").to_f ** 0.5

  erb(:root_results)
end

get("/payment/new") do
  erb(:payment)
end

get("/payment/results") do
  @apr = params.fetch("user_apr").to_f / (100*12)
  @term = params.fetch("user_years").to_f * 12
  @principal = params.fetch("user_pv").to_f
  
  @numerator = @apr * @principal
  @denominator = 1 - ((1 + @apr) ** (-1 * @term))

  @payment_calc = @numerator / @denominator

  erb(:payment_results)
end
