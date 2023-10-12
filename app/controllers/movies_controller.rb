class MoviesController < ApplicationController
    before_action :authenticate_user!, only: [:new, :create]
    def top
        @movies = Movie.all
        @movies = Movie.includes(:liked_users).sort {|a,b| b.liked_users.size <=> a.liked_users.size}
    end

    def youga
        @movies = Movie.all
        @movies = Movie.includes(:liked_users).sort {|a,b| b.liked_users.size <=> a.liked_users.size}
    end

    def houga
        @movies = Movie.all
        @movies = Movie.includes(:liked_users).sort {|a,b| b.liked_users.size <=> a.liked_users.size}
    end

    def about
    end

    def index
        @movies = Movie.all
        if params[:search] == nil
            @movies= Movie.all
        elsif params[:search] == ''
            @movies= Movie.all
        else
            @movies = Movie.where("title LIKE ? ",'%' + params[:search] + '%')
        end
        if params[:tag_ids]
            @movies = []
            params[:tag_ids].each do |key, value|      
                @movies += Tag.find_by(name: key).movies if value == "1"
            end
            @movies.uniq!
        end
        
    end

    def new
        @movie = Movie.new
    end

    def create
        movie = Movie.new(movie_params)
        movie.user_id = current_user.id
        if movie.save!
            redirect_to :action => "index"
        else
            redirect_to :action => "new"
        end
    end

    def show
        @movie = Movie.find(params[:id])
        @comments = @movie.comments
        @comment = Comment.new
    end
    
    def edit
        @movie = Movie.find(params[:id])
    end

    def update
        movie = Movie.find(params[:id])
        if movie.update(movie_params)
            redirect_to :action => "show", :id => movie.id
        else
            redirect_to :action => "new"
        end
    end

    def destroy
        movie = Movie.find(params[:id])
        movie.destroy
        redirect_to action: :index
    end

    private
    def movie_params
        params.require(:movie).permit(:title, :highlight, :released_year, :image, :main_character, :user_id, :body, tag_ids: [])
    end
end