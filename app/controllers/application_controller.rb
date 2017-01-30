class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :authenticate_user!

  layout proc { |controller| controller.request.xhr? ? false : 'application' }
end
