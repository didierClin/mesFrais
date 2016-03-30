class AddTrajetIdToRegistres < ActiveRecord::Migration
  def change
    add_column :registres, :trajet_id, :integer
    add_index :registres, :trajet_id
  end
end
