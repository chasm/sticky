class UpvotesController < ApplicationController
  before_action :get_postit

  def index
    @upvotes = @postit.upvotes

    render json: @upvotes
  end

  def show
    @upvote = @postit.upvotes.find_by(id: params[:id])

    render json: [ @upvote ]
  end

  def create
    upvote = @postit.upvotes.new(upvote_params)

    if upvote.save
      head :created
    else
      head :unprocessable_entity
    end
  end

  def update
    upvote = @postit.upvotes.find_by(id: params[:id])

    if upvote.update(upvote_params)
      head :no_content
    else
      head :unprocessable_entity
    end
  end

  def destroy
    upvote = @postit.upvotes.find_by(id: params[:id])
    if upvote.destroy
      head :no_content
    else
      head :unprocessable_entity
    end
  end

  private

  def get_postit
    head :bad_request unless @postit = Postit.find_by(id: params[:postit_id])
  end

  def upvote_params
    params.require(:upvote)
  end
end