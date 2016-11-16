require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @user = User.new(
						name: "Example User",
						email: "user@example.com",
						password: "mysecurepassword", 
						password_confirmation: "mysecurepassword"
					)
  end

  test "should be valid" do
    assert @user.valid?
  end

  test "email addresses should be unique" do
    duplicate_user = @user.dup
    @user.save
    assert_not duplicate_user.valid?
  end

	test "name should be present" do
		@user.name = "     "
		assert_not @user.valid?
	end

	test "email should be present" do
		@user.email = "     "
		assert_not @user.valid?
	end

	test "password should be present" do
		@user.password = ""
		assert_not @user.valid?
	end
		  
	test "password_confirmation should be present" do
		@user.password_confirmation = ""
		assert_not @user.valid?
	end

end
