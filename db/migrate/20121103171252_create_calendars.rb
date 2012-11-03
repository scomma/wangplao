class CreateCalendars < ActiveRecord::Migration
  def change
    create_table :calendars do |t|
      t.string :title
      t.text :description
      t.date :range_start
      t.date :range_end
      t.string :token

      t.timestamps
    end

    add_index :calendars, :token
  end
end
