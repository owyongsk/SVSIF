class Profile < ActiveRecord::Base
  belongs_to :user
  #has_and_belongs_to_many :projects

  has_many :relations
  has_many :projects, :through => :relations
end
