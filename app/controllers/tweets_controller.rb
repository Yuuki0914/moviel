class TweetsController < ApplicationController
    def index
    end

    def new
        @tweet = Tweet.new
    end

    def show
        @tweet = Tweet.find_by(id: params[:id])
    end

    def create
        @tweet = Tweet.new(tweet_params)
        params[:tweet][:question] ? @tweet.question = params[:tweet][:question].join("") : false
        if @tweet.save
            flash[:notice] = "診断が完了しました"
            redirect_to tweet_path(@tweet.id)
        else
            redirect_to :action => "new"
        end
    end

private
    def tweet_params
        params.require(:tweet).permit(:id, question: [])
    end
end