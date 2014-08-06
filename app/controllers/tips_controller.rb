class TipsController < ApplicationController
  def index
    @tips = Tip.all
  end

  def create
    current_user.tips_given.create(tip_params)
    redirect_to :back
  end

private

  def tip_params
    params.require(:tip).permit(:tippee_id, :amount)
  end
end
