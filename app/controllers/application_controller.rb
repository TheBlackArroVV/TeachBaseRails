class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  protected

  def after_sign_in_path_for(user)
    if user.admin?
      admin_resources_index_path
    else
      search_path
    end
  end
end
