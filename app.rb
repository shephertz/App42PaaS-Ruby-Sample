require 'erubis'

class MyApp
  def call env
    [200, {"Content-Type" => "text/html"}, [welcome]]
  end

  def welcome
    render :file => 'welcome'
  end
 
  def render(option)
    @body = render_erb_file('views/' + option[:file] + '.erb')
  end

  def render_erb_file(file)
    input = File.read(file)
    eruby = Erubis::Eruby.new(input)
    @body = eruby.result(binding())
  end

end
