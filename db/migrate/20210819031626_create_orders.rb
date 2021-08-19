class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      
      t.string :user_name
      t.integer :take_out

      t.timestamps
    end
  end
end
