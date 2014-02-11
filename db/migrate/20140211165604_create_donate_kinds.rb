class CreateDonateKinds < ActiveRecord::Migration
  def change
    create_table :donate_kinds do |t|
      t.string :name

      t.timestamps
    end
  end
end
