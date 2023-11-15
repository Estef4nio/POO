class CreateModalidades < ActiveRecord::Migration[7.0]
  def change
    create_table :modalidades do |t|
      t.string :nome
      t.integer :cargaHorariaMaxima

      t.timestamps
    end
  end
end
