# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{minitest-matchers}
  s.version = "1.0.3.20110906135350"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = [%q{Ryan Davis}, %q{Wojciech Mach}]
  s.date = %q{2011-09-06}
  s.description = %q{minitest-matchers adds support for RSpec/Shoulda-style matchers to
MiniTest::Spec.

A matcher is a class that must implement #description and #matches?
methods. Expactations are then builded using these two methods.}
  s.email = [%q{ryand-ruby@zenspider.com}, %q{wojtek@wojtekmach.pl}]
  s.extra_rdoc_files = [%q{History.txt}, %q{Manifest.txt}, %q{README.txt}]
  s.files = [%q{.autotest}, %q{History.txt}, %q{Manifest.txt}, %q{README.txt}, %q{Rakefile}, %q{lib/minitest/matchers.rb}, %q{test/test_minitest_matchers.rb}, %q{.gemtest}]
  s.homepage = %q{http://github.com/zenspider/minitest-matchers}
  s.rdoc_options = [%q{--main}, %q{README.txt}]
  s.require_paths = [%q{lib}]
  s.rubyforge_project = %q{minitest-matchers}
  s.rubygems_version = %q{1.8.7}
  s.summary = %q{minitest-matchers adds support for RSpec/Shoulda-style matchers to MiniTest::Spec}
  s.test_files = [%q{test/test_minitest_matchers.rb}]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<minitest>, [">= 2.5.0"])
      s.add_development_dependency(%q<minitest>, ["~> 1.6"])
      s.add_development_dependency(%q<hoe>, ["~> 2.12"])
    else
      s.add_dependency(%q<minitest>, [">= 2.5.0"])
      s.add_dependency(%q<minitest>, ["~> 1.6"])
      s.add_dependency(%q<hoe>, ["~> 2.12"])
    end
  else
    s.add_dependency(%q<minitest>, [">= 2.5.0"])
    s.add_dependency(%q<minitest>, ["~> 1.6"])
    s.add_dependency(%q<hoe>, ["~> 2.12"])
  end
end
