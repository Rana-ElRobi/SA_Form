class Project < ActiveRecord::Base
	#users relationships
	has_many :users 
end
