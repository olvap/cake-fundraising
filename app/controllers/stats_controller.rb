class StatsController < ApplicationController
  respond_to :html, :json

  def index
    @impressions = Impression.all
    @impressions_total = @impressions.count
    @impressions_by_session = Impression.group(:session_hash).all.count
    @impressions_on_confirmation = Impression.where(controller_name: "confirmation").group(:session_hash).all.count
  end
end
