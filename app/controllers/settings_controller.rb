class SettingsController < ApplicationController
  def index
    @message = YAML.load_file('config/message.yml')['friend']['nomal'][rand(5)].sub(/name/, 'foo')
    @system_messages = Array.new
    @system_messages << YAML.load_file('config/system_message.yml')['present']
    @user = User.find_or_create_by(id: 1)
    @worry_count = Worry.find_or_create_by(id: 1).count
    @saving =  Saving.find_or_create_by(id: 1).count
    if Saving.find_or_create_by(id: 1).count < 10
      @image = 1
    end
  end

  def create
    saving = Saving.find_or_create_by(id: 1)
    saving.count += 1
    saving.save
    worry = Worry.find_or_create_by(id: 1)
    worry.count -= 1 if worry.count > 0
    worry.save
    redirect_to action: :index
  end
end
