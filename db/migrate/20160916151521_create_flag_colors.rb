class CreateFlagColors < ActiveRecord::Migration[5.0]
  def change
    create_table :flag_colors do |t|
      t.integer :color_id
      t.integer :flag_id

      t.timestamps
    end
  end
end
