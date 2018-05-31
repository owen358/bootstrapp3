class AddColumnsToFormulario < ActiveRecord::Migration[5.1]
  def change
    add_column :formularios, :refresco_light, :string
    add_column :formularios, :fruta, :string
  end
end
