class CreateRuta < ActiveRecord::Migration
  def change
    create_table :rutas do |t|
      t.references :recorrido, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
