class CreateEmotions < ActiveRecord::Migration[6.0]
  def change
    create_table :emotions do |t|
      t.string :name
      t.references :genre, null: false, foreign_key: true

      t.timestamps
    end
  end
end
