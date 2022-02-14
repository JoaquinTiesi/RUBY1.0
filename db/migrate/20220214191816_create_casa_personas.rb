class CreateCasaPersonas < ActiveRecord::Migration[7.0]
  def change
    create_table :casa_personas do |t|
      t.references :persona, null: false, foreign_key: true
      t.references :casa, null: false, foreign_key: true

      t.timestamps
    end
  end
end
