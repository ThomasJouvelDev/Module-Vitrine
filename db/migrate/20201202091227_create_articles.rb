class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string :nom_fr
      t.text :description_fr
      t.string :nom_en
      t.text :description_en
      t.integer :prix
      t.references :category, null: false, foreign_key: true
      t.boolean :vendu
      t.boolean :reserve

      t.timestamps
    end
  end
end
