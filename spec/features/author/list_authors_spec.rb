require 'rails_helper'

describe "List authors page", type: :feature do
  before(:all) do
    @alan = build :author
    @alan.save
  end
  it "should exist at 'authors_path' and render withour error" do
    # https://guides.rubyonrails.org/routing.html#path-and-url-helpers
    visit authors_path
    expect(page).to have_table
    expect(page).to have_text(@alan.name)
    expect(page).to have_text(@alan.homepage)
    expect(page).to have_link @alan.name, href: author_path(@alan)
    expect(page).to have_link 'New', href: new_author_path
    expect(page).to have_link 'Edit', href: edit_author_path(@alan)
  end
  it "should have a delete button for every user" do
    visit authors_path
    prevCount = Author.count
    selector = 'a[data-method=\'delete\'][href=\'' + edit_author_path(@alan) + '\']'
    expect(page).to have_css(selector)
    find(selector).click
    expect(Author.count).to eq(prevCount - 1)
  end
end

# Comment
