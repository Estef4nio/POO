class CreateEstudantes < ActiveRecord::Migration[7.0]
  def change
    create_table :estudantes do |t|
      t.integer :cra
      t.float :ch 
      
      t.timestamps
    end
  end
end
