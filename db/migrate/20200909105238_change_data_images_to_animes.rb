class ChangeDataImagesToAnimes < ActiveRecord::Migration[6.0]
  def change
    change_column :animes, :image, :string
  end
end
