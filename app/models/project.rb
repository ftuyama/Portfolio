class Project < ActiveRecord::Base
  validates :name, :user_id, :presence => true
  belongs_to :user

  def self.orphans
    Project.where("projects.user_id IS NULL")
  end

  def self.published
    Project.where("projects.user_id IS NOT NULL")
  end
end
