class MemesController < ApplicationController

  def index
    @memes = Meme.all
  end

  def new
    @meme = Meme.new
  end

  def create
    meme = Meme.new
    meme.title = params[:meme][:title]
    meme.description = params[:meme][:description]
    meme.image = params[:meme][:image]
    if meme.save!
      render json: meme
    else
      render text: "Woops!"
    end
  end

  private

  # def meme_params
  #   params.require(:meme).permit(:title, :description, :image)
  # end

end