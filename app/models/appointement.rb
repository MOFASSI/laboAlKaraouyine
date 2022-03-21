class Appointement < ApplicationRecord
  WORKING_HOUR = ['8:00', '8:20', '8:40', '9:00', '9:20',
                  '9:40', '10:00', '10:20', '10:40', '11:00',
                  '11:20', '11:40', '14:00', '14:20', '14:40',
                  '15:00', '15:20', '15:40', '16:00', '16:20',
                  '16:40', '17:00']

  belongs_to :user
  validates :date_of_appointement, :time, presence: true
  validate :minimum_date

  def minimum_date
    if date_of_appointement < Date.today + 1
      errors.add(:date_of_appointement, "Vous devez choisir un rendez vous deux jours avant")
    end
  end
end
