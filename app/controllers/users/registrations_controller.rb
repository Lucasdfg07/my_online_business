# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  before_action :configure_sign_up_params, only: [:create]
  before_action :configure_account_update_params, only: [:update]

  # Update user without inserting current password
  def update_resource(resource, params)
    resource.update_without_password(params)
  end

  protected

  def after_update_path_for(resource)
    request.referrer
  end

  # If you have extra params to permit, append them to the sanitizer.
  def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :age, :email, :password, :avatar])
  end

  # If you have extra params to permit, append them to the sanitizer.
  def configure_account_update_params
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :age, :created_facebook_page, :created_instagram_page, :created_linkedin_page, :created_youtube_page, :responded_website, :responded_public, :responded_investment, :responded_online_business, :email, :password, :avatar])
  end
end
