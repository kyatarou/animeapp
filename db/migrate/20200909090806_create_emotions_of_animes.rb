class CreateEmotionsOfAnimes < ActiveRecord::Migration[6.0]
  def change
    create_table :emotions_of_animes do |t|
      t.references :emotion, null: false, foreign_key: true
      t.references :anime, null: false, foreign_key: true

      t.timestamps
    end
  end
end
