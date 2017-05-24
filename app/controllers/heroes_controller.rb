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

  def new
    @hero = Hero.new()
  end

  def create
    @hero = Hero.new(hero_params)
    @stat = Stat.new(stats_params["stats"])
    @hero.stat = @stat
    if @hero.save && @stat.save
      redirect_to hero_path(@hero)
    else
      render :new
    end
  end

  private

  def hero_params
    params.require(:hero).permit(:name, :faction, :role, :skills, :stats_id)
  end

  def stats_params
    params.require(:hero).permit(:stats => [:health, :attack, :armor, :speed])
  end

end
