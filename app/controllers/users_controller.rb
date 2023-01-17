class UsersController < ApplicationController
  def sign_in
    @user = User.where(email: :params['email'], password: :params['password'])
  end

  def sign_up
    @user = User.where(email: :params['email'], password: :params['password'])
  end

  def reset_password
  end
end
