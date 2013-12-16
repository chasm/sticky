class PostitsController < ApplicationController

  def index
    @postits = Postit.all.entries
  end

  def show
    @postits = [ Postit.find_by(id: params[:id]) ]

    render :index
  end

  def create
    postit = Postit.new(postit_params)

    if postit.save
      head :created
    else
      head :unprocessable_entity
    end
  end

  def update
    postit = Postit.find_by(id: params[:id])

    if postit.update(postit_params)
      head :no_content
    else
      head :unprocessable_entity
    end
  end

  def destroy
    postit = Postit.find_by(id: params[:id])
    if postit.destroy
      head :no_content
    else
      head :unprocessable_entity
    end
  end

  private

  def postit_params
    params.require(:postit).permit(:title)
  end
end