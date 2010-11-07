Paths of Glory
==============

Paths of Glory sets you on the road to achievements!

In short, it's a re-usable model for creating an achievement system.

It's extracted from http://peertester.com and inspired by: http://stackoverflow.com/questions/885277/how-to-implement-an-achievement-system-in-ror



Installation
============

Paths of Glory is easy to install.

Add this to your Gemfile:
  
    gem 'paths_of_glory', :git => 'git://github.com/raid5/paths_of_glory.git', :branch => 'rails3'

Then generate the migration:

    rails generate paths_of_glory

And run the migration:

    rake db:migrate
    
This creates the tables.

Then, in your User model:

    class User < ActiveRecord::Base
      include Achievements
    end

and in application.rb, add app/models/achievements to your load path:

    config.autoload_paths += %W( #{Rails.root}/app/models/achievements )

Basic Usage
===========

Paths of Glory gives you access to a DSL to generate achievements. Achievements can have multiple levels or can just be standalone achievements.

The pattern is basically:

Create an achievement:

    rails generate achievement Glory
    
This gives you `app/models/achievements/glory.rb` and `app/models/achievements/glory_observer.rb` with some bootstrapped code.

You're on your own after that. Have fun!


Running the tests
=================

You can run the tests by running:

    rake
    
