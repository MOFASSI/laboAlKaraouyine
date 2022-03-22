class RemoveMonthFromAppointements < ActiveRecord::Migration[6.1]
  def change
    remove_column :appointements, :month
  end
end
