class PositionsController < ApplicationController
  def new
  	@position = Position.new
  end

  def create
    @position = Position.new(position_params)
    if @position.save
      redirect_to position_path(@position.id)
    else
      render 'new'
    end

  end

  def show
  	@position = Position.find(params[:id])
  	@candidates = Candidate.all
  end

  def edit
  end

  def delete
  end

  def position_params
    params.require(:position).permit!
  end

end
