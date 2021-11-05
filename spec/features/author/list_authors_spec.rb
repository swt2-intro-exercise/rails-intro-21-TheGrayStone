require 'rails_helper'

describe "List authors page", type: :feature do
  it "should exist at 'authors_path' and render withour error" do
    # https://guides.rubyonrails.org/routing.html#path-and-url-helpers
    alan = build :author
    alan.save
    visit authors_path
    expect(page).to have_table
    expect(page).to have_text(alan.name)
    expect(page).to have_text(alan.homepage)
    expect(page).to have_link alan.name, href: author_path(alan)
    expect(page).to have_link 'New', href: new_author_path
    expect(page).to have_link 'Edit', href: edit_author_path(alan)
  end
end

# Comment
