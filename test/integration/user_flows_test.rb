require "test_helper"

class UserFlowsTest < ActionDispatch::IntegrationTest
test " will sign in the user " do
 get '/users/sign_in'
 assert_select "h2" , "Log in"
 assert_response :success

 post '/users' , params:{user:{id:1,email:"test@gmail.com"}}
 assert_response :success
end
end
