class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.float :total
      t.float :subtotal
      t.float :gst
      t.float :pst
      t.float :hst
      t.string :status
      t.references :customer, foreign_key: true

      t.timestamps
    end
  end
end
