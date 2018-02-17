class RenamePriceInCentsInProducts < ActiveRecord::Migration[5.1]
  def change
    rename_column :products, :price_in_cents, :price
  end
end
