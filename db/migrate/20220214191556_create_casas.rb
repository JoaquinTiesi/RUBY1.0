class CreateCasas < ActiveRecord::Migration[7.0]
  def change
    create_table :casas do |t|
      t.string :domicilio

      t.timestamps
    end
  end
end
