class CreateTableCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :manager
      t.string :status
      t.integer :terms
    end
  end
end
