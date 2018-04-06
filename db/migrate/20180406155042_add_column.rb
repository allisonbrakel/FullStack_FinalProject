class AddColumn < ActiveRecord::Migration[5.1]
  def change
    add_column :customers, :credit_card, :string
    add_column :customers, :security_code, :string
  end
end
