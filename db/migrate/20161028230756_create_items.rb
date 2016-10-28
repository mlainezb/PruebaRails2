class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :n_serie
      t.text :description
      t.string :category
      t.integer :user_id
      t.references :category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
