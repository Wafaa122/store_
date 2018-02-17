class CreateLls < ActiveRecord::Migration[5.1]
  def change
    create_table :lls do |t|

      t.timestamps
    end
  end
end
