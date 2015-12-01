class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :username
      t.string :password
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :course
      t.integer :role
      t.string :github

      t.timestamps null: false
    end
  end
end
