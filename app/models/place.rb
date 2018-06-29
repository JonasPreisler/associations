class Place < ApplicationRecord

	has_many :addresses, dependent: :destroy
	has_many :webviews
	has_many :options, dependent: :destroy
	
	accepts_nested_attributes_for :addresses, allow_destroy: true,
                              reject_if: ->(attrs) { attrs['option_1'].blank? }
	accepts_nested_attributes_for :options, allow_destroy: true,
                              reject_if: ->(attrs) { attrs['name'].blank? }

    def webview_objects
      Webview.where(id: self.webview.reject(&:empty?)).map(&:name).join(",")
    end

end