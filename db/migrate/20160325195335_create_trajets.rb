class CreateTrajets < ActiveRecord::Migration
  def change
    create_table :trajets do |t|
      t.string :name
      t.string :origine
      t.string :destination
      t.integer :distance

      t.timestamps null: false
    end
  end
end
