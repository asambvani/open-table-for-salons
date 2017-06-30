class CreateStylists < ActiveRecord::Migration[5.1]
  def change
    create_table :stylists do |t|
      t.string :name
      t.integer :salon_id
    end
  end
end
