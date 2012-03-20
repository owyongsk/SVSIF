class AddOrgTypeToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :orgtype, :string

  end
end
