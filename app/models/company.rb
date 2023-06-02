class Company < ActiveRecord::Base
   has_many :freebies
   has_many :devs, through: :freebies
   def give_freebie(dev, item_value, value)
       Freebie.create(item_value: value, item_name: item_name, value: value, company_id: self.id, dev_id: dev.id)
   end
   def self.oldest_company
    company.all.order(:founding_year).first
   end
end
