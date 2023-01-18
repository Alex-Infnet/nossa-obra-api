class ApplicationController < ActionController::API
  ## Related to the authentication - skipped this time
  #before_action :user_logged, except: [:sign_up, :sign_in]
  #def user_logged
  #  head(:forbidden) unless user_signed_in?
  #end
end
