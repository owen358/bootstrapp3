class ChangeColumnTickTypeFromFormularios < ActiveRecord::Migration[5.1]
  def change
    change_column :formularios, :tick, :string
  end
end
