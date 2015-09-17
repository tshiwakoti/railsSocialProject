class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :tag
      t.references :status

      t.timestamps null: false
    end
  end
end
