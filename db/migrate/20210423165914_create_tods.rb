class CreateTods < ActiveRecord::Migration[6.1]
  def change
    create_table :tods do |t|
        t.string :nombre
    	t.text :descripcion
    end
  end
end
