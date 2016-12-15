class SettingController < ApplicationController
  def index
  end

  def create
    saving = Saving.find_or_create_by(id: 1)
    saving.count += 1
    saving.save
    redirect_to :root
  end
end
