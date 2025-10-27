require 'rails_helper'

RSpec.describe "stations/show", type: :view do
  before(:each) do
    assign(:station, Station.create!(
      category: "Category"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Category/)
  end
end
