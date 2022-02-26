class AddDetailsToBookings < ActiveRecord::Migration[6.1]
  def change
    add_column :bookings, :identification, :integer
    add_column :bookings, :details, :text
    add_column :bookings, :question, :text
  end
end
