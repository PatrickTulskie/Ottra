require 'rtranslate'

class GoogleTranslate < TranslatorBase
  
  def translate(text, source, destination)
    result = text
    begin
      result = Translate.t(text, source, destination)
    rescue
      # Nothing!
    ensure
      return result
    end
  end
  
end