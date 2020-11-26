class CreateSituationsOfAnimes < ActiveRecord::Migration[6.0]
  def change
    create_table :situations_of_animes do |t|
      t.references :situation, null: false, foreign_key: true
      t.references :anime, null: false, foreign_key: true

      t.timestamps
    end
  end
end
