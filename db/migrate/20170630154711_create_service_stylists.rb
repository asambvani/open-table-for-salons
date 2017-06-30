class CreateServiceStylists < ActiveRecord::Migration[5.1]
  def change
    create_table :service_stylists do |t|
      t.integer :service_id
      t.integer :stylist_id
    end
  end
end
