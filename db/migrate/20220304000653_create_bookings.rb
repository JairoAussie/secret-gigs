class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.integer :tickets
      t.float :price
      t.references :user, null: false, foreign_key: true
      t.references :gig, null: false, foreign_key: true

      t.timestamps
    end
  end
end
