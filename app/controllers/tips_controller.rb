class TipsController < ApplicationController
  def index
    @tips = Tip.all
  end

  def create
    tip = current_user.tips_given.new(tip_params)
    Stripe::Charge.create({
      card: params[:stripeToken],
      amount: tip.amount_in_cents,
      description: tip.description,
      currency: 'usd'},
      tip.tippee.stripe_secret_key
    )
    tip.save
  rescue Stripe::CardError => e
    flash[:error] = e.message
  ensure
    redirect_to :back
  end

private

  def tip_params
    params.require(:tip).permit(:tippee_id, :amount)
  end
end
