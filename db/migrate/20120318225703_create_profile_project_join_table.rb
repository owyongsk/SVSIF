class CreateProfileProjectJoinTable < ActiveRecord::Migration
  def up
    create_table :profiles_projects, :id => false do |t|
      t.integer :profile_id
      t.integer :project_id
    end
  end

  def down
    drop_table :profiles_projects
  end
end
