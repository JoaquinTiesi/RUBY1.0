class CreateAutos < ActiveRecord::Migration[7.0]
  def change
    create_table :autos do |t|
      t.string :patente
      t.references :persona, null: false, foreign_key: true

      t.timestamps
    end
  end
end
