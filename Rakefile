require 'rubygems'
require 'rake'
require 'echoe'

Echoe.new('ottra', '0.1.0') do |p|
  p.description = 'One Translator (gem) To Rule (them) All!  Uses various translation gems to do language translating.'
  p.url = 'http://github.com/patricktulskie/ottra'
  p.author = 'Patrick Tulskie'
  p.email = 'PatrickTulskie@gmail.com'
  p.ignore_pattern = ['tmp/*', 'script/*', 'lib/main.rb']
  p.dependencies = ['shvets-google_translate', 'googletranslate', 'tranexp']
end

Dir["#{File.dirname(__FILE__)}/tasks/*.rake"].sort.each { |ext| load ext }