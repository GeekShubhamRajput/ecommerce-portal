class CreateCategories < ActiveRecord::Migration[8.0]
  def change
    create_table :categories do |t|
      t.string :name
      t.boolean :deleted, default: false
      t.datetime :deleted_at
      t.integer :deleted_by
      t.timestamps
    end
  end
end
