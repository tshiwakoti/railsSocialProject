class CreateStatuses < ActiveRecord::Migration
  def change
    create_table :statuses do |t|
      t.text :title
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
