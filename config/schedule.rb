set :output, 'log/whenever.log'
set :environment, ENV['RAILS_ENV']


every 1.minute do
  runner 'Worry.check_saving'
end
