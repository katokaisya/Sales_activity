class Customer < ActiveRecord::Base
  has_many :sales_histories
end
