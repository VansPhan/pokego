class CreatePokemons < ActiveRecord::Migration[5.0]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.integer :cp
      t.text :description
      t.string :poke_type

      t.timestamps
    end
  end
end
