module MushroomsHelper
  MUSHROOM_PROPERTIES = %w[edible cap_shape cap_surface cap_color bruises odor gill_attachment gill_spacing
    gill_size gill_color stalk_shape stalk_root stalk_surface_above_ring stalk_surface_below_ring
    stalk_color_above_ring stalk_color_below_ring veil_type veil_color ring_number ring_type
    spore_print_colororange population habitat]

  def mushroom_properties
    MUSHROOM_PROPERTIES
  end

  # def populate_filters
  #   MUSHROOM_PROPERTIES.map do |property|
  #     select_tag property, options_for_select(instance_variable_get("@#{property}"), params[property.to_sym]), class: "dropdown" , prompt: property
  #   end
  # end
end
