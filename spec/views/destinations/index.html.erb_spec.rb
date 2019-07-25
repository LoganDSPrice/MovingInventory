require "rails_helper"

RSpec.describe "destinations/index", type: :view do
  before(:each) do
    assign(:destinations, [
             Destination.create!(
               room_name: "Room Name",
             ),
             Destination.create!(
               room_name: "Room Name",
             ),
           ])
  end

  it "renders a list of destinations" do
    render
    assert_select "tr>td", text: "Room Name".to_s, count: 2
  end
end
