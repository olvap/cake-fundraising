class Fundraisers::CampaignsController < Fundraisers::ApplicationController

  def permitted_params
    params.permit(campaign: [:headline, :story, :logo, :category])
  end

end
