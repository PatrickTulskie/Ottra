require 'benchmark'

class TranslatorBase
  
  def self.response_time
    Benchmark.realtime do
      inst = self.new
      inst.translate('hello world', 'en', 'it')
    end
  end
  
end