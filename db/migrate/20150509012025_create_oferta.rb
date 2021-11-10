class CreateOferta < ActiveRecord::Migration
  def change
    create_table :oferta do |t|
      t.string :titulo
      t.text :descripcion
      t.string :precio
      t.string :forma_pago
      t.string :extension
      t.integer :usuario_id
      t.integer :categorium_id

      t.timestamps null: false
    end
  end
end
