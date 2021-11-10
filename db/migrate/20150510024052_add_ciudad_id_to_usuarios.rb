class AddCiudadIdToUsuarios < ActiveRecord::Migration
  def change
    add_column :usuarios, :ciudad_id, :integer
  end
end
