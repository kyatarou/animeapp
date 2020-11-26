class RenameCastColumnToAnimes < ActiveRecord::Migration[6.0]
  def change
    rename_column :animes, :cast, :actor
  end
end
