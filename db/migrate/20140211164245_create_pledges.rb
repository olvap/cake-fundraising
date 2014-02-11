class CreatePledges < ActiveRecord::Migration
  def change
    create_table :pledges do |t|
      t.float :donate
      t.integer :donate_kind_id
      t.string :not_to_exceed
      t.string :headline
      t.text :story
      t.string :float
      t.string :redirect_click
      t.string :per_uniq_clicl_on

      t.timestamps
    end
  end
end
