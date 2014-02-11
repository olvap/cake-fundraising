class Campaign < ActiveRecord::Base
  belongs_to :category

  has_many :pledges
end
