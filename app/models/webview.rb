class Webview < ApplicationRecord
	belongs_to :place

    def address_objects
      Address.where(id: self.address.reject(&:empty?)).map(&:option_1).join(",")
    end

end
