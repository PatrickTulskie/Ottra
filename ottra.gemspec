# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{ottra}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Patrick Tulskie"]
  s.date = %q{2009-10-28}
  s.description = %q{One Translator (gem) To Rule (them) All!  Uses various translation gems to do language translating.}
  s.email = %q{PatrickTulskie@gmail.com}
  s.extra_rdoc_files = ["README.textile", "lib/config/languages.yml", "lib/ottra.rb", "lib/translator_base.rb", "lib/translators/google_translate.rb", "lib/translators/shvets_google_translate.rb", "lib/translators/tranexp_translate.rb"]
  s.files = ["Manifest", "README.textile", "Rakefile", "lib/config/languages.yml", "lib/ottra.rb", "lib/translator_base.rb", "lib/translators/google_translate.rb", "lib/translators/shvets_google_translate.rb", "lib/translators/tranexp_translate.rb", "ottra.gemspec"]
  s.homepage = %q{http://github.com/patricktulskie/ottra}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Ottra", "--main", "README.textile"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{ottra}
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{One Translator (gem) To Rule (them) All!  Uses various translation gems to do language translating.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<shvets-google_translate>, [">= 0"])
      s.add_runtime_dependency(%q<googletranslate>, [">= 0"])
      s.add_runtime_dependency(%q<tranexp>, [">= 0"])
    else
      s.add_dependency(%q<shvets-google_translate>, [">= 0"])
      s.add_dependency(%q<googletranslate>, [">= 0"])
      s.add_dependency(%q<tranexp>, [">= 0"])
    end
  else
    s.add_dependency(%q<shvets-google_translate>, [">= 0"])
    s.add_dependency(%q<googletranslate>, [">= 0"])
    s.add_dependency(%q<tranexp>, [">= 0"])
  end
end
