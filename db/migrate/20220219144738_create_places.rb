class CreatePlaces < ActiveRecord::Migration[6.1]
  def change
    create_table :places do |t|
      t.string :name
      t.text :address
      t.text :description
      t.string :website
      t.string :phone_number

      t.timestamps
    end
  end
end
