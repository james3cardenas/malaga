class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController

  def google_oauth2
      # You need to implement the method below in your model (e.g. app/models/user.rb)
      @user = User.find_for_google_oauth2(request.env["omniauth.auth"], current_user)

      if @user.persisted?
        flash[:notice] = I18n.t "devise.omniauth_callbacks.success", :kind => "Google"
        redirect_to show_path(@user)
        session[:id] = @user.id
      else
        session["devise.google_data"] = request.env["omniauth.auth"]
        redirect_to show_path() #new_user_registration_url
      end
  end

end