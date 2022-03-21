class RemoveDateFromAppoitements < ActiveRecord::Migration[6.1]
  def change
    remove_column :appointements, :date
    add_column :appointements, :date_of_appointement, :date
  end
end
