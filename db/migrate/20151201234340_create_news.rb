class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string :title
      t.text :body
      t.references :member, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
