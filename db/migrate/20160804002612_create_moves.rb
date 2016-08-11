class CreateMoves < ActiveRecord::Migration[5.0]
  def change
    create_table :moves do |t|
      t.string :name
      t.integer :damage
      t.integer :dps
      t.string :poke_type
      t.boolean :quick_move

      t.timestamps
    end
  end
end
