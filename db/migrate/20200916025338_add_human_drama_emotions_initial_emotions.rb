class AddHumanDramaEmotionsInitialEmotions < ActiveRecord::Migration[6.0]
  def change
    emotions11 = ["勇気がわく", "明るくなれる", "泣ける"]
    emotions11.each do |emotion|
      Emotion.create(name: emotion, genre_id: 11)
    end
  end
end
