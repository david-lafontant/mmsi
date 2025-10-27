require 'rails_helper'

RSpec.describe "entities/edit", type: :view do
  let(:entity) {
    Entity.create!(
      category: "",
      owner: "",
      registration_number: "MyString",
      operation_area: "MyString",
      station: nil,
      adress: "MyString",
      municipality: "MyString",
      latitude: "MyString",
      longitude: "MyString",
      company_name: "MyString",
      owner_id_type: "",
      owner_id_number: "MyString",
      first_name: "MyString",
      last_name: "MyString",
      email: "MyString",
      telephone: "MyString",
      mmsi: "MyString",
      status: "MyString",
      documents: nil
    )
  }

  before(:each) do
    assign(:entity, entity)
  end

  it "renders the edit entity form" do
    render

    assert_select "form[action=?][method=?]", entity_path(entity), "post" do

      assert_select "input[name=?]", "entity[category]"

      assert_select "input[name=?]", "entity[owner]"

      assert_select "input[name=?]", "entity[registration_number]"

      assert_select "input[name=?]", "entity[operation_area]"

      assert_select "input[name=?]", "entity[station_id]"

      assert_select "input[name=?]", "entity[adress]"

      assert_select "input[name=?]", "entity[municipality]"

      assert_select "input[name=?]", "entity[latitude]"

      assert_select "input[name=?]", "entity[longitude]"

      assert_select "input[name=?]", "entity[company_name]"

      assert_select "input[name=?]", "entity[owner_id_type]"

      assert_select "input[name=?]", "entity[owner_id_number]"

      assert_select "input[name=?]", "entity[first_name]"

      assert_select "input[name=?]", "entity[last_name]"

      assert_select "input[name=?]", "entity[email]"

      assert_select "input[name=?]", "entity[telephone]"

      assert_select "input[name=?]", "entity[mmsi]"

      assert_select "input[name=?]", "entity[status]"

      assert_select "input[name=?]", "entity[documents]"
    end
  end
end
