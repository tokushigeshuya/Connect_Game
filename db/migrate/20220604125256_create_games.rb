class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.integer :genre_id
      t.text :game_title

      t.timestamps
    end
  end
end
