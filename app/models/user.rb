class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable

  has_many :tips_given,    foreign_key: :tipper_id, class_name: :Tip
  has_many :tips_received, foreign_key: :tippee_id, class_name: :Tip
end
