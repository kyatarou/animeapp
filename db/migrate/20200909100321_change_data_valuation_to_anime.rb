class ChangeDataValuationToAnime < ActiveRecord::Migration[6.0]
  def change
    change_column :animes, :valuation, :float
  end
end
