class GamesController < ApplicationController
    before_action :find_game, only: [:show, :edit, :update, :destroy]
    before_action :authenticate_user!, except: [:index, :show]
  
    def index
      @games = Game.all.order("created_at DESC")
    end
  
    def show
    end
  
    def new
      @game = current_user.games.build
    end
  
    def create
      @game = current_user.games.build(game_params)
      if @game.save
        redirect_to @game, notice: "Successfully created new guide"
      else
        render 'new'
      end
    end
  
    def edit
    end
  
    def update
      if @game.update(game_params)
        redirect_to @game
      else
        render 'edit'
      end
    end
  
    def destroy
      @game.destroy
      redirect_to root_path, notice: "Successfully deleted guide"
    end
  
    private
  
    def game_params
      params.require(:game).permit(:title, :description, :year, :image)
    end
  
    def find_game
      @game = Game.find(params[:id])
    end
  end
  