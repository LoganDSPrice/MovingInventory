require "rails_helper"

RSpec.describe "boxes/show", type: :view do
  before(:each) do
    @box = assign(:box, Box.create!(
                          description: "Description",
                          house: nil,
                        ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Description/)
    expect(rendered).to match(//)
  end
end
