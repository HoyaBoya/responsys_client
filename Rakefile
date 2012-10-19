# Rakefile
require 'rubygems'
require 'rake'
require 'echoe'

Echoe.new('sundawg_responsys_client', '0.0.1') do |p|
  p.description    = "Ruby SOAP Client For Responsys API"
  p.url            = "http://github.com/animoto/responsys_client"
  p.author         = ["Christopher Sun", "Jeff Jolma"]
  p.email          = ["christopher.sun@gmail.com", "jeff@animoto.com"]
  p.ignore_pattern = ["tmp/*", "script/*"]
  p.development_dependencies = ['mocha >=0.9.12']
  p.runtime_dependencies = ['soap4r >=1.5.8', 'fastercsv >=1.5.4']
end
