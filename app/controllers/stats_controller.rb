class StatsController < ApplicationController
  respond_to :html, :json

  def index
    @impressions = Impression.all
    @impressions_total = @impressions.count
    @impressions_by_session = @impressions.group(:session_hash).all.count
    @impressions_on_confirmation = @impressions.where(controller_name: "confirmation").group(:session_hash).all.count
  end
end
