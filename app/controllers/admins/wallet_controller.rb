class Admins::WalletController < ApplicationController
  before_action :find_wallet, only: [:show, :edit, :update, :destroy]

  def index
    @wallets = Wallet.all
  end

  def show
  end

  def new
    @wallet = Wallet.new
  end

  def create
    @wallet = Wallet.new(wallet_params)

    if @wallet.save
      redirect_to @wallet, notice: "wallet was successfully stored"
    else 
      render :new 
    end
  end

  def edit
  end

  def update
    if @wallet.update(wallet_params)
      redirect_to @wallet, notice: 'wallet was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @wallet.destroy
    redirect_to wallets_url, notice: 'wallet was successfully destroyed.'
  end

  private

  def find_wallet
    @wallet = Wallet.find(params[:id])
  end
  
  def wallet_params
    params.require(:wallet).permits(:material, :color, :size, :price)
  end
end
