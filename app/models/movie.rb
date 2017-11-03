class Movie < ApplicationRecord
    class << self
        def search(query)
            rel = order("title")
            if query.present?
                rel = rel.where("title LIKE ?", "%#{query}%")
            end
            rel
        end
    end
    
end
