class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

   protected

  def configure_permitted_parameters
    #devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :lastname, :nickname, :role])
    #no puedo colocar la forma de arriba con permit porque la version 3.2 de devise no me deja. (tengo que usar esta versionde devise para poder usar el active admin)
    devise_parameter_sanitizer.for(:sign_up) << [:name, :lastname, :nickname, :role]

  end
end
