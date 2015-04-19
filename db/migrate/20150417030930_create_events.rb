class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :date
      t.string :time
      t.string :location
      t.text :description
      t.references :week, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
