class CreateBonds < ActiveRecord::Migration[5.0]
  def change
    create_table :bonds do |t|
    	t.references :user, index: true, foreign_key: true
    	t.references :pokemon, index: true, foreign_key: true
    	t.string :level
    	
      t.timestamps
    end
  end
end
