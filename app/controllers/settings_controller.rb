class SettingsController < ApplicationController
  def index
    @user = User.find_or_create_by(id: 1)
    system_messages = YAML.load_file('config/system_message.yml')
    @system_messages = Array.new
    @system_messages << system_messages['treat']
    @worry_count = Worry.find_or_create_by(id: 1).count
    @saving =  Saving.find_or_create_by(id: 1).count

    if Saving.find_or_create_by(id: 1).count < 10
      @message = YAML.load_file('config/message.yml')['friend']['nomal'][rand(5)].sub(/name/, @user.player_name)
    elsif Saving.find_or_create_by(id: 1).count >= 10
@message = YAML.load_file('config/message.yml')['girlfriend']['nomal'][rand(5)].sub(/name/, @user.player_name)
    end

    if Saving.find_or_create_by(id: 1).count < 10
      @image = 'everyday.png'
    else
      @image = 'deat.png'
      if Saving.find_or_create_by(id: 1).count == 10
        @system_messages << system_messages['girlfriend']
        @datetime = Saving.find_or_create_by(id: 1).updated_at
      elsif Saving.find_or_create_by(id: 1).count == 20
        @system_messages << system_messages['bracelet']
        @datetime = Saving.find_or_create_by(id: 1).updated_at
      elsif Saving.find_or_create_by(id: 1).count == 30
        @system_messages << system_messages['bracelet']
        @datetime = Saving.find_or_create_by(id: 1).updated_at
      elsif Saving.find_or_create_by(id: 1).count == 40
        @system_messages << system_messages['earring']
        @datetime = Saving.find_or_create_by(id: 1).updated_at
      elsif Saving.find_or_create_by(id: 1).count == 50
        @system_messages << system_messages['earring']
        @datetime = Saving.find_or_create_by(id: 1).updated_at
      elsif Saving.find_or_create_by(id: 1).count == 60
        @system_messages << system_messages['earring']
        @datetime = Saving.find_or_create_by(id: 1).updated_at
      elsif Saving.find_or_create_by(id: 1).count == 70
        @system_messages << system_messages['hairclip']
        @datetime = Saving.find_or_create_by(id: 1).updated_at
      elsif Saving.find_or_create_by(id: 1).count == 80
        @system_messages << system_messages['hairclip']
        @datetime = Saving.find_or_create_by(id: 1).updated_at
      elsif Saving.find_or_create_by(id: 1).count == 90
        @system_messages << system_messages['neckless']
        @datetime = Saving.find_or_create_by(id: 1).updated_at
      elsif Saving.find_or_create_by(id: 1).count == 100
        @system_messages << system_messages['neckless']
        @datetime = Saving.find_or_create_by(id: 1).updated_at
      elsif Saving.find_or_create_by(id: 1).count == 110
        @system_messages << system_messages['neckless']
        @datetime = Saving.find_or_create_by(id: 1).updated_at
      elsif Saving.find_or_create_by(id: 1).count == 120
        @system_messages << system_messages['neckless']
        @datetime = Saving.find_or_create_by(id: 1).updated_at
      elsif Saving.find_or_create_by(id: 1).count == 130
        @system_messages << system_messages['watch']
        @datetime = Saving.find_or_create_by(id: 1).updated_at
      elsif Saving.find_or_create_by(id: 1).count == 140
        @system_messages << system_messages['watch']
        @datetime = Saving.find_or_create_by(id: 1).updated_at
      end
    end

    if Saving.find_or_create_by(id: 1).count >= 150
      @image = 'wedding.png'
      render :new
    end

    if Saving.find_or_create_by(id: 1).count >= 140
      @watch = 'watch_2.png'
    elsif Saving.find_or_create_by(id: 1).count >= 130
      @watch = 'watch_1.png'
    end

    if Saving.find_or_create_by(id: 1).count >= 120
      @neckless = 'neckless_4.png'
    elsif Saving.find_or_create_by(id: 1).count >= 110
      @neckless = 'neckless_3.png'
    elsif Saving.find_or_create_by(id: 1).count >= 100
      @neckless = 'neckless_2.png'
    elsif Saving.find_or_create_by(id: 1).count >= 90
      @neckless = 'neckless_1.png'
    end

    if Saving.find_or_create_by(id: 1).count >= 80
      @hairclip = 'hairclip_2.png'
    elsif Saving.find_or_create_by(id: 1).count >= 70
      @hairclip = 'hairclip_1.png'
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

  def new
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
