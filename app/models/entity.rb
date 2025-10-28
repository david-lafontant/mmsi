class Entity < ApplicationRecord
  belongs_to :station
  has_many_attached :documents


  def station_category(station_id)
    Station.find(station_id).category
  end
end
