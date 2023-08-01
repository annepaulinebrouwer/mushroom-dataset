
class MushroomsController < ApplicationController
  MUSHROOM_PROPERTIES = %i[edible cap_shape cap_surface cap_color bruises odor gill_attachment gill_spacing
                           gill_size gill_color stalk_shape stalk_root stalk_surface_above_ring stalk_surface_below_ring
                           stalk_color_above_ring stalk_color_below_ring veil_type veil_color ring_number ring_type
                           spore_print_colororange population habitat]
  def index
    populate_filters
    filter
  end

  private

  def populate_filters
    MUSHROOM_PROPERTIES.each do |property|
      instance_variable_set("@#{property}", Mushroom.distinct.pluck(property).compact)
    end
  end

  def filter
    if (wheres = params.select { |key, value| MUSHROOM_PROPERTIES.include?(key.to_sym) && value.present? })
      wheres.permit!
      @mushrooms = Mushroom.where(wheres).limit(25)
    else
      @mushrooms = Mushroom.all.limit(25)
    end
  end
end
