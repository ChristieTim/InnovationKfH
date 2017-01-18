class Innovation < ApplicationRecord
	def self.search(term)
	  if term
	    where('title LIKE :term OR tags LIKE :term OR author LIKE :term OR orgaim LIKE :term OR summary LIKE :term OR context LIKE :term OR aimsobs LIKE :term OR methods LIKE :term', term: "%#{term}%").order('id DESC')
	  else
	    order('id DESC')
	  end
	end

end
