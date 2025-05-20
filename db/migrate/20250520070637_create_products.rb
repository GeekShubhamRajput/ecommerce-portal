class CreateProducts < ActiveRecord::Migration[8.0]
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price
      t.text :description
      t.boolean :deleted, default: false
      t.datetime :deleted_at
      t.integer :deleted_by
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
