class Order < ActiveRecord::Base
  belongs_to :client
  has_many :products
end
