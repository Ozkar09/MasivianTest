class CreateBinaryTrees < ActiveRecord::Migration[5.2]
  def change
    create_table :binary_trees do |t|

      t.timestamps
    end
  end
end
