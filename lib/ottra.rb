require 'translator_base'
require 'yaml'

class Ottra
  
  attr_accessor :translators, :response_times, :languages
  
  def initialize(options = { })
    # Let's set up our languages. I don't like global variables, but I 
    $ottra_languages = YAML.load_file(File.expand_path(File.dirname(__FILE__)) + '/config/languages.yml')
    
    # Let's get our translators setup
    translator_classes = Dir.glob(File.expand_path(File.dirname(__FILE__)) + '/translators/*')
    translator_classes.each { |translator| require translator }
    
    # Now let's build a list of translator classes we can interact with
    @translators = translator_classes.map do |translator|
      # This is really a terrible way to do this...
      t = translator.split(/\/|\\/).last.gsub('.rb', '').gsub(/\/(.?)/) { "::#{$1.upcase}" }.gsub(/(?:^|_)(.)/) { $1.upcase }
      Object.const_get(t)
    end
    
    # Let's find out how each of them are responding so we know which one to try first, unless we want to just get going
    options[:no_sorting] ? @translators = @translators.sort { |a, b| a.to_s <=> b.to_s } : sort_by_response_times
  end
  
  def translate_text(text, destination, source="en")
    result = text
    
    @translators.each do |translator|
      t = translator.new
      result = t.translate(text, source, destination)
      break unless text == result || (result.match(/Error: Translation from /))
    end
    
    return result
  end
  
  def sort_by_response_times
    @response_times = @translators.inject({}) { |times, translator| times[translator.to_s] = translator.response_time; times }
    @translators = @translators.sort { |a, b| @response_times[a.to_s] <=> @response_times[b.to_s] }
  end
  
end