class CreateIvaConditions < ActiveRecord::Migration[7.1]
  def change
    create_table :iva_conditions do |t|
      t.string :name, null: false, limit: 50
      t.string :description
      t.boolean :active, default: true

      t.timestamps
    end
  end
end
