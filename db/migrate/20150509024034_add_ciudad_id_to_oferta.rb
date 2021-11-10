class AddCiudadIdToOferta < ActiveRecord::Migration
  def change
    add_column :oferta, :ciudad_id, :integer
  end
end
