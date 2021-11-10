class AddCiudadsToOferta < ActiveRecord::Migration
  def change
    add_reference :oferta, :ciudads, index: true, foreign_key: true
  end
end
