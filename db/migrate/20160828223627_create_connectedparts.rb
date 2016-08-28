class CreateConnectedparts < ActiveRecord::Migration[5.0]
  def change
    create_table :connectedparts do |t|
      t.integer :male_id, :null => false
      t.integer :female_id, :null => false

      t.timestamps
    end
  end
end
