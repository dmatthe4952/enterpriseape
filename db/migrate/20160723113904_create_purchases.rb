class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.string :name
      t.string :category
      t.integer :quantity
      t.integer :invoice_id

      t.timestamps null: false
    end
  end
end
