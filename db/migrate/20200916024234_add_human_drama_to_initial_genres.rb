class AddHumanDramaToInitialGenres < ActiveRecord::Migration[6.0]
  def change
    Genre.create(title: "ヒューマンドラマ")
  end
end
