class CreateMessages < ActiveRecord::Migration[6.1]
  def change
    create_table :messages do |t|
      t.string :content
      t.references :sender, null: false#, foreign_key: true
      t.references :receiver, null: false#, foreign_key: true

      t.timestamps
    end
    add_foreign_key :messages, :users, column: :sender_id
    add_foreign_key :messages, :users, column: :receiver_id
  end
end
