class CreateSkills < ActiveRecord::Migration[6.1]
  def change
    create_table :skills do |t|
      t.integer :profile_id
      t.string :name
      t.integer :level
      t.text :logo

      t.timestamps
    end
  end
end
