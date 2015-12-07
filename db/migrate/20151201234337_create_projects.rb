class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.text :body
      t.references :user, index: true, foreign_key: true
      t.string :image
      t.string :github

      t.timestamps null: false
    end
  end
end
