class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.string :year
      t.string :director
      t.string :genre
      t.string :description

      t.timestamps null: false
    end
  end
end
