class CreateRecorridos < ActiveRecord::Migration
  def change
    create_table :recorridos do |t|
      t.string :ruta_name
      t.text :ruta_description
      t.text :ruta_recorrido

      t.timestamps null: false
    end
  end
end
