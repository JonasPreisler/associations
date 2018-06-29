class Address < ApplicationRecord
  belongs_to :place

  has_many :options, dependent: :destroy, inverse_of: :place

  accepts_nested_attributes_for :options, allow_destroy: true,
                              reject_if: ->(attrs) { attrs['name'].blank? }
end
