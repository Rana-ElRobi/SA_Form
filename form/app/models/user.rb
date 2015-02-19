class User < ActiveRecord::Base
	validates :name, presence: true, length: { minimum: 5 }, uniqueness: true
  validates :pwd, presence: true, length: {minimum: 5, maximum: 10}
	belongs_to :project
end
