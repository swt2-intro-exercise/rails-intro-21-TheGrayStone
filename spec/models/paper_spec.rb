require 'rails_helper'

RSpec.describe Paper, type: :model do
  it "should have a title, venue and year" do
    paper = build :paper
    expect(paper.title).to eq("COMPUTING MACHINERY AND INTELLIGENCE")
    expect(paper.venue).to eq("Mind 49: 433-460")
    expect(paper.year).to eq(1950)
  end
end
