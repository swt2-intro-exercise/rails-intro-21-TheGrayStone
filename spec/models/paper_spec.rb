require 'rails_helper'

RSpec.describe Paper, type: :model do
  it "should have a title, venue and year" do
    paper = build :paper
    expect(paper.title).to eq("COMPUTING MACHINERY AND INTELLIGENCE")
    expect(paper.venue).to eq("Mind 49: 433-460")
    expect(paper.year).to eq(1950)
  end
  it "should not validate without title" do
    inv_paper = build :paper_without_title
    expect(inv_paper).to_not be_valid
  end
  it "should not validate without venue" do
    inv_paper = build :paper_without_venue
    expect(inv_paper).to_not be_valid
  end
  it "should not validate without numeric year" do
    inv_paper = build :paper_without_year
    expect(inv_paper).to_not be_valid
    inv_paper_2 = build :paper_with_invalid_year
    expect(inv_paper_2).to_not be_valid
  end
end
