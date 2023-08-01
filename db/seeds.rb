require 'csv'

puts "Adding mushrooms to the database..."
filepath = "db/mushroom_dataset.csv"
CSV.foreach(filepath, headers: :first_row) do |row|
  Mushroom.create(
    edible: row["edible"],
    cap_shape: row["cap_shape"],
    cap_surface: row["cap_surface"],
    cap_color: row["cap_color"],
    bruises: row["bruises"] == "BRUISES",
    odor: row["odor"],
    gill_attachment: row["gill_attachment"],
    gill_spacing: row["gill_spacing"],
    gill_size: row["gill_size"],
    gill_color: row["gill_color"],
    stalk_shape: row["stalk_shape"],
    stalk_root: row["stalk_root"],
    stalk_surface_above_ring: row["stalk_surface_above_ring"],
    stalk_surface_below_ring: row["stalk_surface_below_ring"],
    stalk_color_above_ring: row["stalk_color_above_ring"],
    stalk_color_below_ring: row["stalk_color_below_ring"],
    veil_type: row["veil_type"],
    veil_color: row["veil_color"],
    ring_number: row["ring_number"] == "ONE" ? 1 : 2,
    ring_type: row["ring_type"],
    spore_print_colororange: row["spore_print_colororange"],
    population: row["population"],
    habitat: row["habitat"]
  )
end
puts "Finished!"
