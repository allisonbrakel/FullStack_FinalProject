class ChangeColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :products, :album_name, :name
  end
end
