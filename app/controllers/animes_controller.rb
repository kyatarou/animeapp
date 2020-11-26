class AnimesController < ApplicationController

  def index
    @animes = Anime.all
  end

  def new
    @anime = Anime.new
  end

  def create
    @anime = Anime.new(anime_params)
    
    if @anime.save 
      redirect_to("/home/top")
    else
      redirect_to :action => "new"
    end
  end

  def actor_search
    if params[:actor_key]
        @animes = Anime.where("actor LIKE ?", "%#{params[:actor_key]}%") if params[:actor_key].present?
    else
        @animes = Anime.all
    end
  end



  private
    def anime_params
      params.require(:anime).permit(:title, :valuation, :created_year, :company, :director, :actor, :image, :source, :comment, situation_ids: [], emotion_ids: [])
    end  
end