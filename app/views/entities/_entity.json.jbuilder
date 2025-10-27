json.extract! entity, :id, :category, :owner, :registration_number, :operation_area, :station_id, :adress, :municipality, :latitude, :longitude, :company_name, :owner_id_type, :owner_id_number, :first_name, :last_name, :email, :telephone, :mmsi, :status, :documents, :created_at, :updated_at
json.url entity_url(entity, format: :json)
json.documents do
  json.array!(entity.documents) do |document|
    json.id document.id
    json.url url_for(document)
  end
end
