class AddPriceInCentsToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :price_in_cents, :integer
  end
end
