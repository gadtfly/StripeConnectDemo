class Tip < ActiveRecord::Base
  belongs_to :tipper, class_name: :User
  belongs_to :tippee, class_name: :User
end
