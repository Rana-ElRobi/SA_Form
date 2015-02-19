class Project < ActiveRecord::Base
  has_many :users
  validates :name, presence: true, length: {minimum: 5}, uniqueness: true

  def check_availability
    self.users.count < 6
  end
end
