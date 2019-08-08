class TagsController < ApplicationController
  def index
  end

  def show
  end


  def new
  end

  def create
    @tag = Tag.new(title: params[:title], content: params[:content], user: User.last) 
    if @gossip.save 
      flash[:success] = "Votre gossip à bien été enregistré !"
      redirect_to gossips_path
    else
      render new_gossip_path
    end
  end

  def edit
  end

  def update
  end	

  def destroy
  end
end
