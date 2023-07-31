class MushroomsController < ApplicationController

  def index
    @mushrooms = Mushroom.all.limit(20)
  end
end
