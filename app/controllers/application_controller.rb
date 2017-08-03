class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    added_attrs = [:username, :first_name, :last_name, :phone_number, :city, :state, :country, :email, :password, :password_confirmation, :remember_me]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :sign_in, keys: [:email, :password, :remember_me]
    devise_parameter_sanitizer.permit :account_update, keys: [:first_name, :last_name, :phone_number, :city, :state, :country, :email, :password, :password_confirmation, :remember_me]
  end
end