require 'test_helper'

class UsersLoginTest < ActionDispatch::IntegrationTest

  test "login with invalid information" do
    get login_path
    assert_template 'cats/new'
    # post login_path, params: { session: { name: "Micky", gender: "Male" } }
    # assert_template 'cats/new'
    # assert_not flash.empty?
    get root_path
    assert flash.empty?
  end
end
# ===========================================================================
#   class SessionsController < ApplicationController

#   def new
#   end

#   def create
#     user = User.find_by(email: params[:session][:email].downcase)
#     if user && user.authenticate(params[:session][:password])
#       # Log the user in and redirect to the user's show page.
#     else
#       flash.now[:danger] = 'Invalid email/password combination'
#       render 'new'
#     end
#   end

#   def destroy
#   end


