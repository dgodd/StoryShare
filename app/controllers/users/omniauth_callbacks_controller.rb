# copied from: https://github.com/plataformatec/devise/wiki/OmniAuth:-Overview
class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def facebook
    authorize :facebook do
      session["devise.facebook_data"] = request.env["omniauth.auth"]
    end
  end

  def twitter
    authorize :twitter do
      # http://stackoverflow.com/questions/7117200/devise-for-twitter-cookie-overflow-error
      session["devise.twitter_data"] = request.env["omniauth.auth"].except('extra')
    end
  end

  private
  def authorize provider
    @user = User.send "find_for_#{provider}_oauth", request.env["omniauth.auth"], current_user
    
    provider_name = provider.to_s.titleize

    # if current_user exists:
    # if @user is nil, connecting the account
    # if @user is not nil and not equal to current_user, show an error
    # else, see below:
    if current_user
      if @user.nil?
        current_user.connect_with provider, request.env['omniauth.auth']

        flash[:success] = "Your account has been connected to #{provider_name}."
      elsif @user != current_user
        # TODO: I18n
        flash[:error] = "That #{provider_name} account is already linked to a different user."
      else
        flash[:notice] = "Your account is already linked with the #{provider_name} account." 
      end
      redirect_to edit_user_registration_path
    else
      if @user
        flash[:notice] = I18n.t "devise.omniauth_callbacks.success", :kind => provider.to_s.titleize
        sign_in_and_redirect @user, :event => :authentication
      else
        yield if block_given?
        redirect_to new_user_registration_url
      end
    end
  end

end