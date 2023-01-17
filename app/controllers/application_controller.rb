class ApplicationController < ActionController::Base
  before_action :user_logged, except: [:sign_up, :sign_in]

  def user_logged
    return head(:forbidden) unless user_signed_in?
  end
end
