require './blog'

run lambda { |env| [200, {'Content-Type'=>'text/html'}, [Blog.new.render]] }