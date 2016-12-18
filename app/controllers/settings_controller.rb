class SettingsController < ApplicationController
  def index
    @message = YAML.load_file('config/message.yml')['friend']['nomal'][rand(5)].sub(/name/, 'foo')
    system_messages = YAML.load_file('config/system_message.yml')
    @system_messages = Array.new
    @system_messages << system_messages['treat']
    @user = User.find_or_create_by(id: 1)
    @worry_count = Worry.find_or_create_by(id: 1).count
    @saving =  Saving.find_or_create_by(id: 1).count
    if Saving.find_or_create_by(id: 1).count < 10
      @image = 'everyday.png'
    else
      @image = 'deat.png'
      if Saving.find_or_create_by(id: 1).count == 10
        @system_messages << system_messages['girlfriend']
      elsif Saving.find_or_create_by(id: 1).count == 20
        @system_messages << system_messages['bracelet']
      elsif Saving.find_or_create_by(id: 1).count == 30
        @system_messages << system_messages['bracelet']
      elsif Saving.find_or_create_by(id: 1).count == 40
        @system_messages << system_messages['earring']
      elsif Saving.find_or_create_by(id: 1).count == 50
        @system_messages << system_messages['earring']
      elsif Saving.find_or_create_by(id: 1).count == 60
        @system_messages << system_messages['earring']
      elsif Saving.find_or_create_by(id: 1).count == 70
        @system_messages << system_messages['hairclip']
      elsif Saving.find_or_create_by(id: 1).count == 80
        @system_messages << system_messages['hairclip']
      end
    end

    if Saving.find_or_create_by(id: 1).count >= 70
      @hairclip = 'hairclip_1.png'
    elsif
      @hairclip = 'hairclip_2.png'
    end

    if Saving.find_or_create_by(id: 1).count >= 60
      @earring = 'earring_3.png'
    elsif Saving.find_or_create_by(id: 1).count >= 50
      @earring = 'earring_2.png'
    elsif Saving.find_or_create_by(id: 1).count >= 40
      @earring = 'earring_1.png'
    end

    if Saving.find_or_create_by(id: 1).count >= 30
      @bracelet = 'bracelet_2.png'
    elsif Saving.find_or_create_by(id: 1).count >= 20
      @bracelet = 'bracelet_1.png'
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
