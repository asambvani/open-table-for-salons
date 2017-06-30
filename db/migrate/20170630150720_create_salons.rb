class CreateSalons < ActiveRecord::Migration[5.1]
  def change
    create_table :salons do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.string :hours
    end
  end
end
