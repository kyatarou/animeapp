class AddInitialGenres < ActiveRecord::Migration[6.0]
  def change
    genres = ["SF", "ロボット/メカ", "アクション/バトル", "コメディ/ギャグ", "恋愛/ラブコメ", "日常", "スポーツ/競技",  "ホラー", "サスペンス", "推理", "ヒューマンドラマ"]
    genres.each do |genre|
      Genre.create(title: genre)
    end
  end
end
