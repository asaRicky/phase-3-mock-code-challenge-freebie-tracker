class Freebie < ActiveRecord::Base
    belongs_to :dev
    belongs_to :company

    def print_details
        "#{dev.name} got a #{item_name} from #{company.name}"
    end
end
