class Army < ApplicationRecord

  belongs_to :user
  has_many :units
end
