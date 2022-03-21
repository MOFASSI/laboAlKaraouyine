class CreateAppointements < ActiveRecord::Migration[6.1]
  def change
    create_table :appointements do |t|
      t.references :user, null: false, foreign_key: true
      t.date :date
      t.time :time

      t.timestamps
    end
  end
end
