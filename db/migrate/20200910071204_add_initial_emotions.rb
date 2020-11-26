class AddInitialEmotions < ActiveRecord::Migration[6.0]
  def change
    emotions1 = ["泣ける", "興奮する", "ハラハラする", "切なくなる"]
    emotions2 = ["興奮する", "ハラハラする"]
    emotions3 = ["明るくなれる", "泣ける", "熱くなる", "切なくなる", "勇気がわく"]
    emotions4 = ["明るくなれる", "ほのぼのする"]
    emotions5 = ["笑える", "ムラムラする", "キュンキュンする", "ほのぼのする", "泣ける", "鬱系", "切ない"]
    emotions6 = ["笑える", "明るくなれる", "ほのぼのする", "元気になれる"]
    emotions7 = ["笑える", "熱くなる", "前向きになれる", "応援したくなる"]
    emotions8 = []
    emotions9 = ["スカッとする", "ドキドキする"]
    emotions10 = []              
                  
    emotions1.each do |emotion|
      Emotion.create(name: emotion, genre_id: 1)
    end 
    
    emotions2.each do |emotion|
      Emotion.create(name: emotion, genre_id: 2)
    end
    
    emotions3.each do |emotion|
      Emotion.create(name: emotion, genre_id: 3)
    end
    
    emotions4.each do |emotion|
      Emotion.create(name: emotion, genre_id: 4)
    end

    emotions5.each do |emotion|
      Emotion.create(name: emotion, genre_id: 5)
    end

    emotions6.each do |emotion|
      Emotion.create(name: emotion, genre_id: 6)
    end

    emotions7.each do |emotion|
      Emotion.create(name: emotion, genre_id: 7)
    end

    

    emotions9.each do |emotion|
      Emotion.create(name: emotion, genre_id: 9)
    end
    
    
  end
end
