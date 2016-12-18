class CreateCreatures < ActiveRecord::Migration[5.0]
  def change
    create_table :creatures do |t|

      t.timestamps
    end
  end
end
