require 'test_helper'

class CustomRoutesTest < ActionDispatch::IntegrationTest
 test "that /login route opens the login page" do
 	get '/login'
 	assert_response :success
 end

 test "that /logout route opens the login page" do
 	get '/logout'
 	assert_response :redirect
 	assert_redirected_to '/'
 end

 test "that /sign_up route opens the sign_up page" do
 	get '/sign_up'
 	assert_response :success
 end

end
