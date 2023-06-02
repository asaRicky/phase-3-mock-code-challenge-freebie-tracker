class Freebie < ActiveRecord::Base
    belongs_to :dev
    belongs_to :company

    def output
        "#{dev.name} got a #{item.name} from #{company.name}"
    end
end
