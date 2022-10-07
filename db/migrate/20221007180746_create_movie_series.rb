class CreateMovieSeries < ActiveRecord::Migration[7.0]
  def change
    create_table :movie_series do |t|
      t.string :title
      t.date :date
      t.integer :rating
      t.references :character, null: false, foreign_key: true

      t.timestamps
    end
  end
end
