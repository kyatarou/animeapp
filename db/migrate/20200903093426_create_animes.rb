class CreateAnimes < ActiveRecord::Migration[6.0]
  def change
    create_table :animes do |t|
      t.string :title
      t.integer :valuation
      t.integer :created_year
      t.string :company
      t.string :director
      t.string :cast

      t.timestamps
    end
  end
end
