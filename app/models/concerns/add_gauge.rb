module AddGauge
  extend ActiveSupport::Concern

  included do
    def self.check_saving
      saving = Saving.find_or_create_by(id: 1)
      date = Time.now - 24 * 60 * 60
      Worry.add unless saving.updated_at < date
      puts 'aaaaaaaaaaaaaaaaaa'
    end

    def self.add
      worry = Worry.find_or_create_by(id: 1)
      worry.count += 1 if worry.count < 5
      worry.save
    end
  end
 end
