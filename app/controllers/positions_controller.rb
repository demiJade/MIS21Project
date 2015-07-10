class PositionsController < ApplicationController
  def new
  	@position = Position.new
  end

  def show
  	@position = Position.find(params[:id])
  	@candidates = Candidate.all
  end

  def edit
  end

  def delete
  end
end
