class AddMonthToAppointements < ActiveRecord::Migration[6.1]
  def change
    remove_column :appointements, :date_of_appointement
    remove_column :appointements, :time
    add_column :appointements, :month, :string
    add_column :appointements, :day, :string
    add_column :appointements, :hour, :string
  end
end
