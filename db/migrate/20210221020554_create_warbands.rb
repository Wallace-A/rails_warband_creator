class CreateWarbands < ActiveRecord::Migration[6.0]
  def change
    create_table :warbands do |t|
      t.string :name
      t.integer :value, :default => 0
      t.string :faction
      t.timestamps
    end
  end
end
