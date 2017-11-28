class Holidaybirdfc < ApplicationRecord
  belongs_to :user, optional: true
  validates :channel, presence: true
  validates :sku, presence: true
  validates :description, presence: true
  validates :cc, presence: true
  validates :forecast, presence: true
  validates :harvest, presence: true
  validates :period, presence: true
  validates :uom, presence: true
end
