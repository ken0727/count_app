class CreateButtonPresses < ActiveRecord::Migration[5.2]
  def change
    create_table :button_presses do |t|
      t.integer :count
      t.integer :count2

      t.timestamps
    end
  end
end
