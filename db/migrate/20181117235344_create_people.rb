class CreatePeople < ActiveRecord::Migration[5.2]
  def change
    create_table :people do |t|
      t.string :first_name
      t.string :last_name
      t.string :display_name
      t.string :email_address
      t.string :job_title

      t.timestamps
    end
  end
end
