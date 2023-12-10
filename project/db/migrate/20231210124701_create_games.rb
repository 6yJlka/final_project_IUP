class CreateGames < ActiveRecord::Migration[7.1]
  has_one_attached :image
  def change
    create_table :games do |t|
      t.string :title
      t.text :description
      t.integer :year
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
