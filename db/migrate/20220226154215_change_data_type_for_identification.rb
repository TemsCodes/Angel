class ChangeDataTypeForIdentification < ActiveRecord::Migration[6.1]
  def change
    change_column(:bookings, :identification, :text)
  end
end
