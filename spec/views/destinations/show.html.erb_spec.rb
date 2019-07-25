require "rails_helper"

RSpec.describe "destinations/show", type: :view do
  before(:each) do
    @destination = assign(:destination, Destination.create!(
                                          room_name: "Room Name",
                                        ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Room Name/)
  end
end
