class CreateCampaigns < ActiveRecord::Migration
  def change
    create_table :campaigns do |t|
      t.string :headline
      t.text :story

      t.timestamps
    end
  end
end
