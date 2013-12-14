class UsersController < ApplicationController
    
    def logout
        reset_session
        flash[:warning] = "You have successfully logged out."
        redirect_to '/videos'
    end
end
