class CouponsController < ApplicationController

  def index
    @coupon = Coupon.all
  end

  def show
    @coupon = Coupon.find(params[:id])
  end

  def new
  end

  def create
    @coupon = Coupon.new
    @coupon.first_name = params[:first_name]
    @coupon.last_name = params[:last_name]
    @coupon.save
    redirect_to coupon_path(@coupon) 
  end

end
