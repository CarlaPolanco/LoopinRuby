class CreateSpents < ActiveRecord::Migration[7.1]
  def change
    create_table :spents do |t|
      t.integer :monto
      t.text :descripcion
      t.text :boleta_img
      t.text :estado
      t.text :id_user

      t.timestamps
    end
  end
end
