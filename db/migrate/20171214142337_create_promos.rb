class CreatePromos < ActiveRecord::Migration[5.1]
  def change
    create_table :promos do |t|
      t.string :title
      t.string :imagen
      t.text :description
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
