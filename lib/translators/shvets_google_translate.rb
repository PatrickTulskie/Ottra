require 'google_translate'

class ShvetsGoogleTranslate < TranslatorBase
  
  def translate(text, source, destination)
    result = text
    begin
      shvet_google = Google::Translator.new
      result = shvet_google.translate(source.to_sym, destination.to_sym, text)
    rescue
      # Just do nothing...
    ensure
      return result
    end
  end
  
end