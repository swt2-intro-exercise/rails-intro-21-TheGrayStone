require 'rails_helper'

describe "Edit papers page", type: :feature do
  before(:all) do
    @paper = build :paper
    @paper.save
  end
  it "should be able to assign authors to a paper" do
    prev_length = @paper.authors.length
    author = build :author
    author.save
  end
end
