class RemoveImageFromGames < ActiveRecord::Migration[7.1]
  def change
    remove_column :games, :image, :string
  end
end
