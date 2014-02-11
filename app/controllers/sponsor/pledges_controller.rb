class Sponsor::PledgesController < InheritedResources::Base

  def permitted_params
    params.permit(pledge: [:headline, :donate, :donate_kind_id, :not_to_exceed, :redirect_click, :per_uniq_clicl_on])
  end

end
