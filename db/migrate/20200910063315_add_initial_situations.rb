class AddInitialSituations < ActiveRecord::Migration[6.0]
  def change
    situations1 = ["バトル", "異世界", "恋愛", "崩壊した世界"]
    situations2 = ["恋愛"]
    situations3 = ["学園", "異世界", "異能力", "グロい", "魔法", "歴史物", "恋愛"]
    situations4 = ["学園", "異世界", "女の子だけ", "下ネタ"]
    situations5 = ["学園", "異世界", "ハーレム", "主人公が男", "主人公が女子"]
    situations6 = ["学園", "女の子だけ", "ロリ系"]
    situations7 = ["学園", "超次元"]
    situations8 = ["学園", "グロい"]
    situations9 = ["学園", "ギャンブル", "騙し合い", "パニック展開"]
    situations10 = ["学園"]              
                  
    situations1.each do |situation|
      Situation.create(name: situation, genre_id: 1)
    end 
    
    situations2.each do |situation|
      Situation.create(name: situation, genre_id: 2)
    end
    
    situations3.each do |situation|
      Situation.create(name: situation, genre_id: 3)
    end
    
    situations4.each do |situation|
      Situation.create(name: situation, genre_id: 4)
    end

    situations5.each do |situation|
      Situation.create(name: situation, genre_id: 5)
    end

    situations6.each do |situation|
      Situation.create(name: situation, genre_id: 6)
    end

    situations7.each do |situation|
      Situation.create(name: situation, genre_id: 7)
    end

    situations8.each do |situation|
      Situation.create(name: situation, genre_id: 8)
    end

    situations9.each do |situation|
      Situation.create(name: situation, genre_id: 9)
    end
    
    situations10.each do |situation|
      Situation.create(name: situation, genre_id: 10)
    end
    

  end
end
