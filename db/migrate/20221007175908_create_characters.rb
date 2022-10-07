class CreateCharacters < ActiveRecord::Migration[7.0]
  def change
    create_table :characters do |t|
      t.string :name
      t.integer :age
      t.integer :weight
      t.string :history
      t.string :movie_serie
      t.string :image

      t.timestamps
    end
  end
end
