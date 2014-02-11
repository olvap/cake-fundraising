class AddInformationToSponsor < ActiveRecord::Migration
  def change
    add_column :sponsors, :name, :string
    add_column :sponsors, :address, :string
    add_column :sponsors, :city, :string
    add_column :sponsors, :phone, :string
    add_column :sponsors, :campaign_for, :string
  end
end
