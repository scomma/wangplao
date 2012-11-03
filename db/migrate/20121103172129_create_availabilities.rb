class CreateAvailabilities < ActiveRecord::Migration
  def change
    create_table :availabilities do |t|
      t.references :participant
      t.date :on

      t.timestamps
    end
    add_index :availabilities, :participant_id
  end
end
