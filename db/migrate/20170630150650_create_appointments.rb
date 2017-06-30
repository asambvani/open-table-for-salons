class CreateAppointments < ActiveRecord::Migration[5.1]
  def change
    create_table :appointments do |t|
      t.datetime :date_time
      t.string :service
      t.integer :stylist_id
      t.integer :customer_id
    end
  end
end
