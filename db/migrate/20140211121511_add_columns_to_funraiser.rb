class AddColumnsToFunraiser < ActiveRecord::Migration
  def change
    add_column :fundraisers, :provider, :string
    add_column :fundraisers, :uid, :string
  end
end
