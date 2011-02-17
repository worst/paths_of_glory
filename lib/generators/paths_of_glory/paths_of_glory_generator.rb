class PathsOfGloryGenerator < Rails::Generators::Base
  source_root File.expand_path('../templates', __FILE__)
  
  def generate
    #directory 'db/migrate'
    copy_file "20100311101933_create_achievements.rb", "db/migrate/#{Time.now.utc.strftime("%Y%m%d%H%M%S")}_create_achievements.rb"
    copy_file "achievement-default.png", "public/images/achievement-default.png"
  end
end
