require 'rubygems'
require 'github/markup'

class Blog
  def render
    GitHub::Markup.render('welcome.markdown', File.read('./posts/welcome.markdown'))
  end
end