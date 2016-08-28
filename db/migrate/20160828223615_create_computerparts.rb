class CreateComputerparts < ActiveRecord::Migration[5.0]
  def change
    create_table :computerparts do |t|
      t.string :partname
      t.string :description
      

      t.timestamps
    end
  end
end
