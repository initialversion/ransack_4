class VotesController < ApplicationController
  def index
    @votes = Vote.all
  end

  def show
    @vote = Vote.find(params[:id])
  end

  def new
    @vote = Vote.new
  end

  def create
    @vote = Vote.new
    @vote.voter_id = params[:voter_id]
    @vote.vote_descrption = params[:vote_descrption]

    if @vote.save
      redirect_to "/votes", :notice => "Vote created successfully."
    else
      render 'new'
    end
  end

  def edit
    @vote = Vote.find(params[:id])
  end

  def update
    @vote = Vote.find(params[:id])

    @vote.voter_id = params[:voter_id]
    @vote.vote_descrption = params[:vote_descrption]

    if @vote.save
      redirect_to "/votes", :notice => "Vote updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @vote = Vote.find(params[:id])

    @vote.destroy

    redirect_to "/votes", :notice => "Vote deleted."
  end
end
