class CreateDiscs < ActiveRecord::Migration[6.1]
  def change
    create_table :discs do |t|
      t.string :question

      t.timestamps
    end
  end
end
