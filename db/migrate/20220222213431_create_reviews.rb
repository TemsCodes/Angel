class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.integer :help_score
      t.integer :staff_score
      t.integer :location_score
      t.references :booking, null: false, foreign_key: true

      t.timestamps
    end
  end
end
