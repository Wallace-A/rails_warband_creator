class CreateFighters < ActiveRecord::Migration[6.0]
  def change
    create_table :fighters do |t|
      t.string :name
      t.string :role
      t.integer :value
      t.references :warband, null: false, foreign_key: true
      t.timestamps
    end
  end
end
