module ApplicationHelper
    def fill_title(page_title)
        base_title =  "Movie SNS"
        if page_title.empty?
            base_title
        else
            "#{page_title} | #{base_title} "
        end
    end
end
