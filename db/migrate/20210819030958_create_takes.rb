class CreateTakes < ActiveRecord::Migration[5.2]
  def change
    create_table :takes do |t|
      
      t.string :name
      t.integer :remaining
      t.integer :lowest
      

      t.timestamps
    end
  end
end
