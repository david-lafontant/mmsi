require 'rails_helper'

RSpec.describe "stations/edit", type: :view do
  let(:station) {
    Station.create!(
      category: "MyString"
    )
  }

  before(:each) do
    assign(:station, station)
  end

  it "renders the edit station form" do
    render

    assert_select "form[action=?][method=?]", station_path(station), "post" do
      assert_select "input[name=?]", "station[category]"
    end
  end
end
