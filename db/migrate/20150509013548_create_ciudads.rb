class CreateCiudads < ActiveRecord::Migration
  def change
    create_table :ciudads do |t|
      t.string :ciudad

      t.timestamps null: false
    end
  end
end
