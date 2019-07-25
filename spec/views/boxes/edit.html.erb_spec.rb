require 'rails_helper'

RSpec.describe "boxes/edit", type: :view do
  before(:each) do
    @box = assign(:box, Box.create!(
      :description => "MyString",
      :house => nil
    ))
  end

  it "renders the edit box form" do
    render

    assert_select "form[action=?][method=?]", box_path(@box), "post" do

      assert_select "input[name=?]", "box[description]"

      assert_select "input[name=?]", "box[house_id]"
    end
  end
end
