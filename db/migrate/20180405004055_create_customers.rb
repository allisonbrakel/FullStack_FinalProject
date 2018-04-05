class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.string :username
      t.string :password
      t.string :first_name
      t.string :last_name

      t.timestamps
    end
  end
end