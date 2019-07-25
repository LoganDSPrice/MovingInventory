require 'rails_helper'

RSpec.describe "boxes/new", type: :view do
  before(:each) do
    assign(:box, Box.new(
      :description => "MyString",
      :house => nil
    ))
  end

  it "renders new box form" do
    render

    assert_select "form[action=?][method=?]", boxes_path, "post" do

      assert_select "input[name=?]", "box[description]"

      assert_select "input[name=?]", "box[house_id]"
    end
  end
end
