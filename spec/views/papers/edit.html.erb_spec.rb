require 'rails_helper'

RSpec.describe "papers/edit", type: :view do
  before(:each) do
    @paper = assign(:paper, Paper.create!(
      title: "MyString",
      venue: "MyString",
      year: 1
    ))
  end

  it "renders the edit paper form" do
    render

    assert_select "form[action=?][method=?]", paper_path(@paper), "post" do

      assert_select "input[name=?]", "paper[title]"

      assert_select "input[name=?]", "paper[venue]"

      assert_select "input[name=?]", "paper[year]"

    end
  end
  it "should be able to assign authors to a paper" do
    prev_length = @paper.authors.length
    author = build :author
    author.save
    render
    expect(rendered).to have_field('paper[authors]')
    select = rendered.find('select')
    select.select author.id
    find('input[type="submit"]').click
    @paper.reload
    expect(@paper.authors.length).to be(prev_length + 1)
  end
end
