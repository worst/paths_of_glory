PKG_FILES = FileList[
  '[a-zA-Z]*',
  'lib/**/*',
  'rails/**/*',
  'spec/**/*'
]

begin
  require 'jeweler'
  Jeweler::Tasks.new do |s|
    s.name = "paths_of_glory"
    s.version = "0.2.0"
    s.author = "Paul Campbell, Adam McDonald"
    s.email = "mcdonald.adam@gmail.com"
    s.homepage = "http://www.github.com/raid5/paths_of_glory"
    s.platform = Gem::Platform::RUBY
    s.summary = "Getting you started on the road to achievements."
    s.files = PKG_FILES.to_a
    s.has_rdoc = false
    s.extra_rdoc_files = ["README.md"]
  end
rescue LoadError
  puts "Jeweler not available. Install it with: sudo gem install jeweler"
end

Jeweler::GemcutterTasks.new