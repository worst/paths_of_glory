class AchievementGenerator < Rails::Generators::Base
  source_root File.expand_path('../templates', __FILE__)
  
  argument :class_name, :type => :string, :description => "Name of achievement."
  argument :model_name, :type => :string, :description => "Name of model to observe."
  
  def generate
    class_collisions class_name, "#{class_name}"
    class_collisions class_name, "#{class_name}Observer"

    empty_directory "app/models/achievements"

    template "achievement.rb", "app/models/achievements/#{file_name}.rb"
    template "achievement_observer.rb", "app/models/achievements/#{file_name}_observer.rb"
  end
  
  private

  def file_name
    class_name.underscore
  end
end
