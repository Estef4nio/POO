class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :nome
      t.string :endereco
      t.string :email
      t.string :senha

      t.timestamps
    end
  end
end
