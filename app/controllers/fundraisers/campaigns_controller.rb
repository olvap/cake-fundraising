class Fundraisers::CampaignsController < InheritedResources::Base

  def permitted_params
    params.permit(campaign: [:headline, :story, :logo, :category])
  end

end
