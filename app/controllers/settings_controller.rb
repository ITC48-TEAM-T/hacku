class SettingsController < ApplicationController
  def index
    @message = YAML.load_file('config/message.yml')['friend']['nomal'][rand(5)].sub(/name/, 'foo')
    @user = User.find_or_create_by(id: 1)
    @worry_count = Worry.find_or_create_by(id: 1).count
  end

  def create
    saving = Saving.find_or_create_by(id: 1)
    saving.count += 1
    saving.save
    redirect_to action: :index
  end
end
