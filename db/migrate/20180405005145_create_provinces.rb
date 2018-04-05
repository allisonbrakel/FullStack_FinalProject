class CreateProvinces < ActiveRecord::Migration[5.1]
  def change
    create_table :provinces do |t|
      t.string :province_code
      t.float :gst
      t.float :pst
      t.float :hst

      t.timestamps
    end
  end
end
