class AddLogoToCampaign < ActiveRecord::Migration
  def change
    add_column :campaigns, :logo, :string
  end
end
