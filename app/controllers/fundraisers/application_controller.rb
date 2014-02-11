class Fundraisers::ApplicationController < InheritedResources::Base
  before_filter :authenticate_fundraiser!
end
