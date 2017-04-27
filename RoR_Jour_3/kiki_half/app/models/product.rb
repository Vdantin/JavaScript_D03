class Product < ActiveRecord::Base
belongs_to :user, counter_cache: true, autosave: true
# foreign_key: "user_id"

validates :title,
                length: { in: 3..50 }

validates :title, presence: true


validates :price,
                numericality: { greater_than: 0 }

# The description, if it is not empty, must contain more than 2 characters.
validates :price, presence: true





end
