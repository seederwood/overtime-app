class AuditLog < ApplicationRecord
  enum status: { pending: 0, confirmed: 1 }
  belongs_to :user

  validates_presence_of :user_id, :status, :start_date

  after_initialize :set_defaults

  before_update :set_verify

  scope :by_start_date, -> { order('start_date desc') }

  private

  def set_defaults
    self.start_date ||= Date.today - 6.days
  end

  def set_verify
    self.date_verified = Date.today
  end

end
