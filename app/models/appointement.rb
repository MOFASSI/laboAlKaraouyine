class Appointement < ApplicationRecord
  belongs_to :user
  validates :date_of_appointement, :time, presence: true
end
