class CreateProjectProfileJoinTable < ActiveRecord::Migration
  def up
    create_table :projects_profiles, :id => false do |t|
      t.integer :project_id
      t.integer :profile_id
    end
  end

  def down
    drop_table :projects_profiles
  end
end
