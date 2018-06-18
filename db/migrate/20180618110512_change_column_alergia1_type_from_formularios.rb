class ChangeColumnAlergia1TypeFromFormularios < ActiveRecord::Migration[5.1]
  def change
    change_column :formularios, :alergia1, :string
  end
end
