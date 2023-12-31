class CreateMushrooms < ActiveRecord::Migration[7.0]
  def change
    create_table :mushrooms do |t|
      t.string :edible
      t.string :cap_shape
      t.string :cap_surface
      t.string :cap_color
      t.boolean :bruises
      t.string :odor
      t.string :gill_attachment
      t.string :gill_spacing
      t.string :gill_size
      t.string :gill_color
      t.string :stalk_shape
      t.string :stalk_root
      t.string :stalk_surface_above_ring
      t.string :stalk_surface_below_ring
      t.string :stalk_color_above_ring
      t.string :stalk_color_below_ring
      t.string :veil_type
      t.string :veil_color
      t.integer :ring_number
      t.string :ring_type
      t.string :spore_print_colororange
      t.string :population
      t.string :habitat

      t.timestamps
    end
  end
end
