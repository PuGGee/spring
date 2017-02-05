class Event < ApplicationRecord

  belongs_to :user

  def type_definition
    "EventTypes::#{event_type.camelize}".constantize
  rescue NameError
    nil
  end

  def progress_percentage
    100 - (100 * (finishes_at - DateTime.now) / (finishes_at - created_at)).to_i
  end
end
