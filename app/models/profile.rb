class Profile < ActiveRecord::Base
  belongs_to :user
  has_and_belongs_to_many :projects
  
  validates :name, :length => { :in => 2..255 }
  validates :entity, :length => { :in => 2..255 }
  validates :profession, :length => { :in => 2..255 }
  validates :skills, :length => { :in => 2..255 }

end
