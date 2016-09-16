class CreateFlags < ActiveRecord::Migration[5.0]
  def change
    create_table :flags do |t|
      t.string :country
      t.string :description
      t.integer :num_of_colors
      t.string :img_url

      t.timestamps
    end
  end
end
