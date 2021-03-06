unless (Rails.env.production? or Rails.env.staging?)
  require 'rspec/core/rake_task'
  require 'cucumber/rake/task'

  namespace :ci do
    desc 'Run Cucumber'
    task tests: ['cucumber:first_try', 'cucumber:second_try']
  end
end
