require 'rubygems'
require 'ottra'
require 'yaml'

t = Ottra.new({:no_sorting => true})
# puts t.translators.inspect
# puts t.response_times.to_yaml
# puts t.translators.inspect
# puts $languages.inspect

puts t.translate_text('Hello world!', 'it')
puts t.translate_text('Ciao mondo!', 'en', 'it')