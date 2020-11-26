class AddCommentToAnimes < ActiveRecord::Migration[6.0]
  def change
    add_column :animes, :comment, :text
  end
end
