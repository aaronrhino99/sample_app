class ApplicationController < ActionController::Base
	include SessionsHelper

	private

		#confirms a loggedn in user.
    def logged_in_user
      unless logged_in?
        
        store_location
        flash[:danger] = "Please Log in"
        redirect_to login_url, status: :see_other
      end
    end
end