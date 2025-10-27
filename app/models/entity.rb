class Entity < ApplicationRecord
  belongs_to :station
  has_many_attached :documents
end
