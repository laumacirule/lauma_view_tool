module LaumaViewTool
  class Error < StandardError; end

  class Render
    def self.copyright(name, message)
      "&copy; #{Time.now.year} | <b>#{name}</b> #{message}".html_safe
    end
  end
end
