class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  private

  def after_sign_in_path_for(resource)
    user_path(resource)
  end

  def after_sign_out_path_for(resource)
    root_path
  end

  def configure_permitted_parameters
<<<<<<< HEAD
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email])
=======
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email])
>>>>>>> ffcab96c2a58ab026ee9112d49eae8d1d20e3463
  end
end
