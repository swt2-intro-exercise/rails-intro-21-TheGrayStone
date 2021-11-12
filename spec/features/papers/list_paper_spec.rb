require 'rails_helper'

describe "List papers page", type: :feature do
  before(:all) do
    @paper = build :paper
    @paper.save
    @paper2 = build :paper
    @paper2.year = 1968
    @paper2.title = "newer paper"
    @paper2.save
  end
  it "should only show papers from 1950" do
    visit papers_path(:year => 1950)
    expect(page).to_not have_text(@paper2.title)
  end
end
