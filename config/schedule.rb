require 'active_support/all'
Time.zone = "Asia/Tokyo"
env :PATH, ENV['PATH']
# 出力先のログファイルの指定
set :output, 'log/crontab.log'
# ジョブの実行環境の指定
set :environment, :development


every 2.minute do
  runner 'Worry.check_saving'
end
