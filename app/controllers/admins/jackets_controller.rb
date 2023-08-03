class Admins::JacketsController < ApplicationController
  before_action :find_Jacket, only: [:show, :edit, :update, :destroy]

  def index
    @jackets = Jacket.all
  end

  def show
  end

  def new
    @jacket = Jacket.new
  end

  def create
    @jacket = Jacket.new(jacket_params)

    if @jacket.save
      redirect_to @jacket, notice: "Jacket was successfully stored"
    else 
      render :new 
    end
  end

  def edit
  end

  def update
    if @jacket.update(jacket_params)
      redirect_to @jacket, notice: 'Jacket was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @jacket.destroy
    redirect_to jackets_url, notice: 'Jacket was successfully destroyed.'
  end

  private

  def find_jacket
    @jacket = Jacket.find(params[:id])
  end
  
  def jacket_params
    params.require(:jacket).permits(:material, :color, :size, :price)
  end

end
