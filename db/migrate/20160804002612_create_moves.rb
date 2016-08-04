class CreateMoves < ActiveRecord::Migration[5.0]
  def change
    create_table :moves do |t|
      t.string :name
      t.integer :damage
      t.integer :dps
      t.string :poke_type

      t.timestamps
    end
  end
end
