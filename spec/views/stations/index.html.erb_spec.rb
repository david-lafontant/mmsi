require 'rails_helper'

RSpec.describe "stations/index", type: :view do
  before(:each) do
    assign(:stations, [
      Station.create!(
        category: "Category"
      ),
      Station.create!(
        category: "Category"
      )
    ])
  end

  it "renders a list of stations" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new("Category".to_s), count: 2
  end
end
