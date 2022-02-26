class AddPhotoToPlaces < ActiveRecord::Migration[6.1]
  def change
    add_column :places, :photo, :text
  end
end
