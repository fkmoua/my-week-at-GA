class CreateWeeks < ActiveRecord::Migration
  def change
    create_table :weeks do |t|
      t.string :name
      t.string :date
      t.string :message
      t.string :this_week
      t.string :next_week
      t.string :office_hours

      t.timestamps null: false
    end
  end
end
