class AddHumanDramaSituationsToInitialSituations < ActiveRecord::Migration[6.0]
  def change
    situations11 = ["学園", "恋愛"]
    situations11.each do |situation|
      Situation.create(name: situation, genre_id: 11)
    end
  end
end
