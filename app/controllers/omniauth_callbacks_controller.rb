class OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def stripe_connect
    auth = request.env["omniauth.auth"]
    current_user.update_attributes(uid:               auth[:uid],
                                   provider:          auth[:provider],
                                   stripe_public_key: auth[:info][:stripe_publishable_key],
                                   stripe_secret_key: auth[:credentials][:token])
    redirect_to root_path
  end
end
