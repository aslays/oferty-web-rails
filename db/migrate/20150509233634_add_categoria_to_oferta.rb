class AddCategoriaToOferta < ActiveRecord::Migration
  def change
    add_reference :oferta, :categoria, index: true, foreign_key: true
  end
end
