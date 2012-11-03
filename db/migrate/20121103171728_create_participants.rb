class CreateParticipants < ActiveRecord::Migration
  def change
    create_table :participants do |t|
      t.references :calendar
      t.string :name

      t.timestamps
    end
    add_index :participants, :calendar_id
  end
end
