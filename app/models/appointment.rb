class Appointment < ApplicationRecord
    validates :start_date, presence: true
    validates :end_date, presence: true
    validates :category, presence: true, inclusion: { in: %w(Routine Follow-up Urgent) }
    validates :description, presence: true
end
