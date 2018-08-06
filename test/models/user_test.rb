require 'test_helper'

class UserTest < ActiveSupport::TestCase
	# 2.1 Les tests de modele
	test "first_name should not be blank" do
  		user = User.new(first_name: "", last_name:"Gilles", email:"gilles@gmail.com")
  		assert_not user.save, "Your first_name is blank"
  	end

  	test "first_name should not have only space" do
  		user = User.new(first_name: "   ", last_name:"Gilles", email:"gilles@gmail.com")
  		assert_not user.save, "Your first_name is full of space"
  	end
	
	test "should not have the same email as someone else" do
  		user = User.new(first_name: "   ", last_name:"Gilles", email:"gilles@gmail.com")
  		assert_not user.save, "Your email is already taken"
  	end

	

end
