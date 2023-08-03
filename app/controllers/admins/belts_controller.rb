class Admins::BeltsController < ApplicationController

  before_action :find_belt, only: [:show, :edit, :update, :destroy]

  def index
    @belts = Belt.all
  end

  def show
  end

  def new
    @belt = Belt.new
  end

  def create
    @belt = Belt.new(belt_params)

    if @belt.save
      redirect_to @belt, notice: "Belt was successfully stored"
    else 
      render :new 
    end
  end

  def edit
  end

  def update
    if @belt.update(belt_params)
      redirect_to @belt, notice: 'Belt was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @belt.destroy
    redirect_to belts_url, notice: 'Belt was successfully destroyed.'
  end

  private

  def find_belt
    @belt = Belt.find(params[:id])
  end
  
  def belt_params
    params.require(:belt).permits(:material, :color, :size, :price)
  end

end
