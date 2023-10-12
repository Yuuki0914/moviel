class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.text :highlight
      t.integer :released_year
      t.string :image
      t.string :maincharacter
      t.integer :user_id

      t.timestamps
    end
  end
end
