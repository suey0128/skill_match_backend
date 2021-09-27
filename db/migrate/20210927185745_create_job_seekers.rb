class CreateJobSeekers < ActiveRecord::Migration[6.1]
  def change
    create_table :job_seekers do |t|
      t.string :name
      t.text :location
      t.string :username
      t.string :password
      t.string :email
      t.text :image

      t.timestamps
    end
  end
end
