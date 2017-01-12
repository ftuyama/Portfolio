class User < ActiveRecord::Base
  validates :name,  :uniqueness => true,
                    :length => { :within => 5..30 },
                    :presence => true
  has_many :projects
end
