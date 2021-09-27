class CreateAddEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :add_events do |t|
      t.integer :event_id
      t.integer :job_seeker_id

      t.timestamps
    end
  end
end
