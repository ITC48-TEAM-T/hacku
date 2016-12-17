class SettingsController < ApplicationController
  def index
    @messages = YAML.load_file('config/message.yml')['nomal']
  end

  def create
    saving = Saving.find_or_create_by(id: 1)
    saving.count += 1
    saving.save
    redirect_to :root
  end
end
