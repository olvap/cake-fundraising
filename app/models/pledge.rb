class Pledge < ActiveRecord::Base
  belongs_to :donate_kind
  belongs_to :campaign
end
