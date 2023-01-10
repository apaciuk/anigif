require 'rails_helper'

RSpec.describe "gifs/index", type: :view do
  before(:each) do
    assign(:gifs, [
      Gif.create!(
        user: nil,
        image_data: "MyText"
      ),
      Gif.create!(
        user: nil,
        image_data: "MyText"
      )
    ])
  end

  it "renders a list of gifs" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
  end
end
