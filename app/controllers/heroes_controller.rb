class HeroesController < ApplicationController

  def index
    @heroes = Hero.all.sort_by{|x| x.faction}
    respond_to do |format|
      format.html {render :index}
      format.json {render json: @heroes, each_serializer: HeroIndexSerializer}
    end
  end

  def show
    @hero = Hero.find(params[:id])
    respond_to do |format|
      format.html {render :show}
      format.json {render json: @hero}
    end
  end

end
