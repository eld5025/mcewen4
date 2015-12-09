class Drawing < ActiveRecord::Base

	def self.import(file)
		CSV.foreach(file.path, headers: true) do |row|
			Drawing.create! row.to_hash
		end
	end

	# def self.search(search)
	# 	if search
	# 		where(["shape LIKE ?","%#{search}%"])
	# 	else
	# 		all
	# 	end
	# end

end
