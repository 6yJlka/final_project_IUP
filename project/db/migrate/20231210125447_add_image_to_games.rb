# db/migrate/20231210125447_add_image_to_games.rb

class AddImageToGames < ActiveRecord::Migration[7.1]
  def change
    change_table :games do |t|
      t.string :image # Используйте :string для хранения пути к файлу
    end
  end
end
