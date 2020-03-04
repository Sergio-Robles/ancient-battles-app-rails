class CreateArmyUnits < ActiveRecord::Migration[6.0]
  def change
    create_table :army_units do |t|
      t.references :army
      t.references :unit

      t.timestamps
    end
  end
end
