class CreateEntities < ActiveRecord::Migration[8.0]
  def up
    create_enum "owner", [ "individual", "company" ]
    create_enum "category", [ "vessel", "station" ]
    create_enum "owner_id_type", [ "nif", "ninu", "passport" ]
    create_table :entities do |t|
      t.enum :category, enum_type: "category", null: false, default: "vessel"
      t.enum :owner, enum_type: "owner", null: false, default: "company"
      t.string :registration_number
      t.string :operation_area
      t.references :station, null: false, foreign_key: true
      t.string :adress
      t.string :municipality
      t.string :latitude
      t.string :longitude
      t.string :company_name
      t.enum :owner_id_type, enum_type: "owner_id_type", null: false, default: "nif"
      t.string :owner_id_number
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :telephone
      t.string :mmsi
      t.string :status

      t.timestamps
    end
  end

  def down
        drop_table :entities
    execute <<-SQL
      DROP TYPE owner;
      DROP TYPE category;
      DROP TYPE owner_id_type;
    SQL
  end
end
