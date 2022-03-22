class AddMonhToAppointements < ActiveRecord::Migration[6.1]
  def change
    add_column :appointements, :month, :string
  end
end
