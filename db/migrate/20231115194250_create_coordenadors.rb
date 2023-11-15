class CreateCoordenadors < ActiveRecord::Migration[7.0]
  def change
    create_table :coordenadors do |t|

      t.timestamps
    end
  end
end
