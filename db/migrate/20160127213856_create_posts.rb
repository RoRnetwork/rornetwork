class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :description
      t.boolean :publish
      t.date :publish_date
      t.boolean :acrchive
      t.references :user, index: true, foreign_key: true

      t.timestamps
    end
  end
end
