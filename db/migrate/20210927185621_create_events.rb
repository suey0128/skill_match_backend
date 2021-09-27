class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.integer :recruiter_id
      t.datetime :event_date
      t.text :location
      t.text :description
      t.string :name
      t.text :image

      t.timestamps
    end
  end
end
