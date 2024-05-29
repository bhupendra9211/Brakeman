module ApplicationHelper
    def safe_url(url)
        URI.parse(url).to_s rescue '/contact'
    end
end
