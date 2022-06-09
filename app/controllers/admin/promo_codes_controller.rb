class Admin::PromoCodesController < ApplicationController
  before_action :set_promo_code, only: %i[update destroy]

  def create
    @promo_code = PromoCode.create(promo_code_params)
  end

  def update
    @promo_code.update(promo_code_params)
  end

  def destroy
    @promo_code.destroy
  end

  private
  def set_promo_code
    @promo_code = PromoCode.find(params[:id])
  end

  def promo_code_params
    params.require(:promo_code).permit(:discount)
  end
end
