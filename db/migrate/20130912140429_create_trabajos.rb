class CreateTrabajos < ActiveRecord::Migration
  def change
    create_table :trabajos do |t|
      t.string :usuario
      t.string :tipo
      t.date :fecha
      t.string :hora

      t.timestamps
    end
  end
end
