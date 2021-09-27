class CreateRecruiters < ActiveRecord::Migration[6.1]
  def change
    create_table :recruiters do |t|
      t.string :name
      t.string :company_name
      t.text :location
      t.string :username
      t.string :password
      t.string :email
      t.text :logo

      t.timestamps
    end
  end
end
