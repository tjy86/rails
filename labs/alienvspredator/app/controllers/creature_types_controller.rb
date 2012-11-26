class CreatureTypesController < ApplicationController
  def index
    @creature_types = CreatureType.all
  end
end