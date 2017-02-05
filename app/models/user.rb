class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :resource
  has_many :buildings
  has_many :events
  has_many :armies

  def primary_army
    armies.first
  end
end
