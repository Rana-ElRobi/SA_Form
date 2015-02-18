class User < ActiveRecord::Base
	validates :name, presence: true, length: { minimum: 5 }
	belongs_to :project
end
