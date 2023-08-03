class Admins::shoeController < ApplicationController
  before_action :find_shoe, only: [:show, :edit, :update, :destroy]

  def index
    @shoes = Shoe.all
  end

  def show
  end

  def new
    @shoe = Shoe.new
  end

  def create
    @shoe = Shoe.new(shoe_params)

    if @shoe.save
      redirect_to @shoe, notice: "shoe was successfully stored"
    else 
      render :new 
    end
  end

  def edit
  end

  def update
    if @shoe.update(shoe_params)
      redirect_to @shoe, notice: 'shoe was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @shoe.destroy
    redirect_to shoes_url, notice: 'shoe was successfully destroyed.'
  end

  private

  def find_shoe
    @shoe = Shoe.find(params[:id])
  end
  
  def shoe_params
    params.require(:shoe).permits(:material, :color, :size, :price)
  end

end
