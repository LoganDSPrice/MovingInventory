require 'rails_helper'

RSpec.describe "boxes/index", type: :view do
  before(:each) do
    assign(:boxes, [
      Box.create!(
        :description => "Description",
        :house => nil
      ),
      Box.create!(
        :description => "Description",
        :house => nil
      )
    ])
  end

  it "renders a list of boxes" do
    render
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
