class Building < ApplicationRecord

  belongs_to :user

  def type_definition
    "BuildingTypes::#{building_type.camelize}".constantize
  rescue NameError
    nil
  end
end
