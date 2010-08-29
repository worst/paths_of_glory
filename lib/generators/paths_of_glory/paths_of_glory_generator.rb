class PathsOfGloryGenerator < Rails::Generators::Base
  source_root File.expand_path('../templates', __FILE__)
  
  def generate
    #directory 'db/migrate'
    copy_file "20100311101933_create_achievements.rb", "db/migrate/#{Time.now.utc.strftime("%Y%m%d%H%M%S")}_create_achievements.rb"
  end

  def after_generate
    puts "

You're on the Path to Glory

Now, add 'include Achievements' to your User model:

    class User < ActiveRecord::Base
      include Achievements
    end

and add 'app/modeles/achievements' to your load paths:

    config.load_paths += \%\W( \#\{Rails.root\}/app/models/achievements )

and run:

    rake db:migrate,

To generate a new Achievement, run:

    rails generate achievement Glory

where 'Glory' is the name of the achievement.

Good luck!

"
  end
end
