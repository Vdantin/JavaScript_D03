class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title, limit: 255, null:false
      t.text :description, null:true
      t.float :price, null:false
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end