class ResourcesController < ApplicationController

  def index
    @resource = current_user.resource
  end

  private

  def resource_params
    params.fetch(:resource, {})
  end
end
