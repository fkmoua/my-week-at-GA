class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.string :name
      t.string :url
      t.references :week, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
