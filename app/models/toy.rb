class Toy < ActiveRecord::Base

  belongs_to :cat

  validates :name, presence: true
  validates :cat_id, presence: true

end
