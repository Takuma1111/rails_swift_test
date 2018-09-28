class Chat < ApplicationRecord
  validates :name,:descript, presence: true
end
