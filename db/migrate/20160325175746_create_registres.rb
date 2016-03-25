class CreateRegistres < ActiveRecord::Migration
  def change
    create_table :registres do |t|
      t.string :motif
      t.date :date
      t.string :origine
      t.string :destination
      t.integer :distance
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
