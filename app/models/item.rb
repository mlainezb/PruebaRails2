class Item < ActiveRecord::Base
  belongs_to :category
  
  scope :size, -> (n) {where (:size => n)}

end
