require 'rails_helper'

RSpec.describe "gifs/edit", type: :view do
  let(:gif) {
    Gif.create!(
      user: nil,
      image_data: "MyText"
    )
  }

  before(:each) do
    assign(:gif, gif)
  end

  it "renders the edit gif form" do
    render

    assert_select "form[action=?][method=?]", gif_path(gif), "post" do

      assert_select "input[name=?]", "gif[user_id]"

      assert_select "textarea[name=?]", "gif[image_data]"
    end
  end
end
