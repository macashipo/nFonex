class Status < ActiveRecord::Base
	has_many :campaigns
	def self.load_states_hash
		states = Hash.new
		states_in_db = Status.find(:all, :order => :name)
		states_in_db.each { |s| states[s.name] = s.id } 
		# the key is what shows up in the select to the user, 
  		# the value goes in the VALUE attribute of the option tag
  		states
	end
end
