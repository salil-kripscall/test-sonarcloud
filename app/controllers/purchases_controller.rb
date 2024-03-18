class PurchasesController < ApplicationController
  def index
    @purchases = Purchase.all
  end

  def show
    @purchase = Purchase.find(params[:id])
  end

  def new
    @vendors = Vendor.all
    @item = Item.find(params[:item_id])
    @purchase = Purchase.new
  end

  def create
    @purchase = Purchase.new(purchase_params)
    if @purchase.save
      redirect_to purchase_path(@purchase)  
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
      @purchase = Purchase.find_by(id: params[:id])
  end

  private
    def purchase_params
      params.require(:purchase).permit(:item_id, :vendor_id, :cost_price, :purchase_quantity, :total_price)
    end
end
