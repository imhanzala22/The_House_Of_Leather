class Admins::LeatherBagController < ApplicationController
  before_action :find_leather_bag, only: [:show, :edit, :update, :destroy]

  def index
    @leather_bags = LeatherBag.all
  end

  def show
  end

  def new
    @leather_bag = LeatherBag.new
  end

  def create
    @leather_bag = LeatherBag.new(leather_bag_params)

    if @leather_bag.save
      redirect_to @leather_bag, notice: "leather_bag was successfully stored"
    else 
      render :new 
    end
  end

  def edit
  end

  def update
    if @leather_bag.update(leather_bag_params)
      redirect_to @leather_bag, notice: 'leather_bag was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @leather_bag.destroy
    redirect_to leather_bags_url, notice: 'leather_bag was successfully destroyed.'
  end

  private

  def find_leather_bag
    @leather_bag = LeatherBag.find(params[:id])
  end
  
  def leather_bag_params
    params.require(:leather_bag).permits(:material, :color, :size, :price)
  end

end
