class SettingsController < ApplicationController
  def index
    @message = YAML.load_file('config/message.yml')['friend']['nomal'][rand(5)]
  end

  def create
    saving = Saving.find_or_create_by(id: 1)
    saving.count += 1
    saving.save
  end
end
