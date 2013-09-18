class MyApp
  def call env
    [200, {"Content-Type" => "text/html"}, ["Welcome to App42 PaaS"]]
  end
end
