require "test_helper"

class JournalFlowTest < ActionDispatch::IntegrationTest
def setup
  @user = User.new(email:"test@gmail.com",password: "password", password_confirmation: "password")
 end

 test " user should be valid " do 
  assert @user.valid?
 end

  test "success login" do

    get "/users/sign_in"
    assert_select "h2", "Log in"
    assert_response :success

    post "/users" , params:{user:{id:1,email:"test@mail.com"}}
    assert_response :success
  end

 
end
  
  