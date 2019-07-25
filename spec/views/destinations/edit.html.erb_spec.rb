require "rails_helper"

RSpec.describe "destinations/edit", type: :view do
  before(:each) do
    @destination = assign(:destination, Destination.create!(
                                          room_name: "MyString",
                                        ))
  end

  it "renders the edit destination form" do
    render

    assert_select "form[action=?][method=?]", destination_path(@destination), "post" do
      assert_select "input[name=?]", "destination[room_name]"
    end
  end
end
