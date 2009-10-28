require 'tranexp'

class TranexpTranslate < TranslatorBase
  
  def translate(text, source, destination)
    result = text
    begin
      tran_source = eval("Tranexp::Http::#{$ottra_languages[source]}")
      tran_dest = eval("Tranexp::Http::#{$ottra_languages[source]}")
      tranexp = Tranexp::Http.new
      result = tranexp.translate(text, tran_source, tran_dest)
    rescue
      # just do nothing
    ensure
      return result
    end
  end
  
end