class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.integer :user_id
      t.integer :card_number
      t.datetime :expiration_date
      t.string :billing_address

      t.timestamps
    end
  end
end
