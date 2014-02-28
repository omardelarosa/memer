class MemesController < ApplicationController

  def index
    @memes = Meme.all
  end

  def new
    @meme = Meme.new
  end

  def create

  end

end