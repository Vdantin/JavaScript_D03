class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

# validates :username,
#                 length: { in: 2..15 }

validates :password,
                length: { in: 2..25 }

has_many :products, dependent: :destroy
			# -> { order('published_at desc').limit(1)
			# 	},


end
