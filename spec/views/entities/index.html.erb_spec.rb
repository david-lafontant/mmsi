require 'rails_helper'

RSpec.describe "entities/index", type: :view do
  before(:each) do
    assign(:entities, [
      Entity.create!(
        category: "",
        owner: "",
        registration_number: "Registration Number",
        operation_area: "Operation Area",
        station: nil,
        adress: "Adress",
        municipality: "Municipality",
        latitude: "Latitude",
        longitude: "Longitude",
        company_name: "Company Name",
        owner_id_type: "",
        owner_id_number: "Owner Id Number",
        first_name: "First Name",
        last_name: "Last Name",
        email: "Email",
        telephone: "Telephone",
        mmsi: "Mmsi",
        status: "Status",
        documents: nil
      ),
      Entity.create!(
        category: "",
        owner: "",
        registration_number: "Registration Number",
        operation_area: "Operation Area",
        station: nil,
        adress: "Adress",
        municipality: "Municipality",
        latitude: "Latitude",
        longitude: "Longitude",
        company_name: "Company Name",
        owner_id_type: "",
        owner_id_number: "Owner Id Number",
        first_name: "First Name",
        last_name: "Last Name",
        email: "Email",
        telephone: "Telephone",
        mmsi: "Mmsi",
        status: "Status",
        documents: nil
      )
    ])
  end

  it "renders a list of entities" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new("".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Registration Number".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Operation Area".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Adress".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Municipality".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Latitude".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Longitude".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Company Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Owner Id Number".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("First Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Last Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Email".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Telephone".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Mmsi".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Status".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
