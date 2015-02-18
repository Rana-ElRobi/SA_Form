class User < ActiveRecord::Base

	validates :name, presence: true, length: { minimum: 5 }
	has_one :project
end
