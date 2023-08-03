class Admins::BagsController < ApplicationController

  before_action :find_belt, only: [:show, :edit, :update, :destroy]

  def index
    @bags = Bag.all
  end

  def show
  end

  def new
    @bags = Bag.new
  end

  def create
    @bag = Bag.new(bag_params)

    if @bag.save
      redirect_to @bag, notice: "Belt was successfully stored"
    else 
      render :new 
    end
  end

  def edit
  end

  def update
    if @bag.update(bag_params)
      redirect_to @bag, notice: 'Belt was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @bag.destroy
    redirect_to bags_url, notice: 'Belt was successfully destroyed.'
  end

  private

  def find_bags
    @bag = Bag.find(params[:id])
  end
  
  def bag_params
    params.require(:bag).permits(:material, :color, :size, :price)
  end

end
