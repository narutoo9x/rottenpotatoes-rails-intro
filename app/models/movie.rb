class Movie < ActiveRecord::Base
	def self.all_ratings
		a = Array.new
		self.select("rating").uniq.each {|x| a.push(x.rating)}
		#uniq returns a new array by removing duplicate values in self.
		a.sort.uniq
	end
end
