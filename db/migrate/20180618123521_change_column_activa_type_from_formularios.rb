class ChangeColumnActivaTypeFromFormularios < ActiveRecord::Migration[5.1]
  def change
        change_column :formularios, :activa, :string
  end
end
