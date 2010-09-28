require 'rake'
require 'spec/rake/spectask'
require 'rake/rdoctask'

desc 'Default: run specs.'
task :default => :spec

desc 'Run the specs'
Spec::Rake::SpecTask.new(:spec) do |t|
  t.spec_opts = ['--colour --format progress --loadby mtime --reverse']
  t.spec_files = FileList['spec/**/*_spec.rb']
end

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gemspec|
    gemspec.name = "sinatra-simple-navigation"
    gemspec.summary = "A Sinatra extension to enable creating navigations with the simple-navigation gem. Also works for Padrino."
    gemspec.email = "andreas.schacke@gmail.com"
    gemspec.homepage = "http://github.com/andi/sinatra-simple-navigation"
    gemspec.description = "A Sinatra extension to enable creating navigations with the simple-navigation gem. Also works for Padrino. See http://github.com/andi/simple-navigation for more information on simple-navigation."
    #gemspec.add_development_dependency('rspec', '>= 1.2.8')
    gemspec.add_dependency('simple-navigation', '>= 3.0.0')
    gemspec.authors = ["Andi Schacke"]
    gemspec.rdoc_options = ["--inline-source", "--charset=UTF-8"]
    gemspec.files = FileList["[A-Z]*", "{lib,spec}/**/*"] - FileList["**/*.log"]
    gemspec.rubyforge_project = 'andi'
  end
  Jeweler::GemcutterTasks.new
  Jeweler::RubyforgeTasks.new do |rubyforge|
    rubyforge.doc_task = "rdoc"
  end
rescue LoadError => e
  puts "Jeweler not available (#{e}). Install it with: sudo gem install technicalpickles-jeweler -s http://gems.github.com"
end
