class MushroomsController < ApplicationController

  def index
    @mushrooms = Mushroom.all.limit(20)
    @edible = Mushroom.distinct.pluck(:edible).compact
    @cap_shape = Mushroom.distinct.pluck(:cap_shape).compact

    return unless params[:edible].present? || params[:cap_shape].present?

    @mushrooms = @mushrooms.where(edible: params[:edible], cap_shape: params[:cap_shape])
  end

end
