class ChangeColumnLimitesTypeFromFormularios < ActiveRecord::Migration[5.1]
  def change
    change_column :formularios, :limites, :string
  end
end
