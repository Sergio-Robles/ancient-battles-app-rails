class CreateUnits < ActiveRecord::Migration[6.0]
  def change
    create_table :units do |t|
      t.string :name
      t.integer :size
      t.integer :price
      t.integer :attack
      t.integer :defence
      t.references :unit_type

      t.timestamps
    end
  end
end
