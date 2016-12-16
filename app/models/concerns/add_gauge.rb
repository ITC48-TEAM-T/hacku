module AddGauge
  extend ActiveSupport::Concern

  included do
    def self.check_saving
      saving = Saving.find_or_create_by(id: 1)
      date = Time.now - 24 * 60 * 60
      Worry.add if saving.updated_at < date
    end

    def self.add
      worry = Worry.find_or_create_by(id: 1)
      worry.count += 1
      worry.save
    end
  end
 end
