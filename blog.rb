require 'rubygems'
require 'erb'
require 'github/markup'

class Blog
  LAYOUT = './views/layout.erb'

  def render
    render_template do
      GitHub::Markup.render('welcome.markdown', File.read('./posts/welcome.markdown'))
    end
  end

  private

  def render_template
    ERB.new(File.read(LAYOUT)).result(binding)
  end

end