class AddSourceToAnimes < ActiveRecord::Migration[6.0]
  def change
    add_column :animes, :source, :string
  end
end
