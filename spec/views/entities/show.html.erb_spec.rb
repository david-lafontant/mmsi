require 'rails_helper'

RSpec.describe "entities/show", type: :view do
  before(:each) do
    assign(:entity, Entity.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/Registration Number/)
    expect(rendered).to match(/Operation Area/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Adress/)
    expect(rendered).to match(/Municipality/)
    expect(rendered).to match(/Latitude/)
    expect(rendered).to match(/Longitude/)
    expect(rendered).to match(/Company Name/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Owner Id Number/)
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Telephone/)
    expect(rendered).to match(/Mmsi/)
    expect(rendered).to match(/Status/)
    expect(rendered).to match(//)
  end
end
