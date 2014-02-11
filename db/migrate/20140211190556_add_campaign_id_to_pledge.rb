class AddCampaignIdToPledge < ActiveRecord::Migration
  def change
    add_column :pledges, :campaign_id, :integer
  end
end
