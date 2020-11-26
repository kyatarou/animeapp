class AnimeSearchController < ApplicationController

    def anime_search1
        @genres = Genre.all
    end
     
    def anime_search2
        session[:genre] = anime_search_params[:genre]
        @emotions = Genre.find(session[:genre]).emotions
    end
     
    def anime_search3
        session[:emotion] = anime_search_params[:emotion]
        @situations = Genre.find(session[:genre]).situations
    end

    def anime_search4
        session[situation_ids: []] = anime_search_params[situation_ids: []]
        # @selected_emotion_ids = session[emotion_ids: []]
        selectedEmotion = Emotion.find(session[:emotion])
        @animes = selectedEmotion.animes
        # @animes = Anime.where(emotion: session[:emotion])
        if session[situaion_ids: []]
            @selected_situation_ids = session[situation_ids: []]
            @selected_animes = []
            @animes.each do |anime|
                anime.situation_ids.each do |situation_id|
                    if @selected_situation_ids.include?(situation_id.to_s)
                        @selected_animes.push(anime)
                    end
                end
            end
            @selected_animes = @selected_animes.uniq
        else
            @selected_situation_ids = [] 
            @selected_animes = @animes
        end
    end

    private
     def anime_search_params
        params.permit(:genre, :emotion, situaion_ids: [])
     end
    


end
