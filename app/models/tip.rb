class Tip < ActiveRecord::Base
  belongs_to :tipper, class_name: :User
  belongs_to :tippee, class_name: :User

  def amount_in_cents
    (amount * 100).to_i
  end

  def description
    "#{tipper.email} tipping #{tippee.email}"
  end
end
