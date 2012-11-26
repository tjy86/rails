class CreatureTypesController < ApplicationController
  def index
    @creature_types = CreatureType.all
  end
  def create
    name = params[:name]
    CreatureType.cretae(:name => name)
  end
end