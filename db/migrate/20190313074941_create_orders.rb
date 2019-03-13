class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :title
      t.string :hotel_id
      t.belongs_to :group, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
