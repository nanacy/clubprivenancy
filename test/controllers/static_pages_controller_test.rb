require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  # test "should get home" do
  #   get static_pages_home_url
  #   assert_response :success
  # end

	# 2.2 Tester les views
	# test home page, doit afficher les bons liens 
	#(si user log ou non)
	test "don't show the right links" do
		# get '/'
		# assert_select 'h1', "Home"

		# get '/'
		# if logged_in? 
		# 	assert_select 'a', "Log out"
		# else
		# 	assert_select 'a', "Log in"
		# end
  	end
	

end
