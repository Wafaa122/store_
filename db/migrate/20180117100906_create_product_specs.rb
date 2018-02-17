class CreateProductSpecs < ActiveRecord::Migration[5.1]
  def change
    create_table :product_specs do |t|

      t.timestamps
    end
  end
end
