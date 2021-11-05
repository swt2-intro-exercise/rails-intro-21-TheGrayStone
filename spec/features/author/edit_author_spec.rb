require 'rails_helper'

describe "Edit authors page", type: :feature do
  it "should exist at 'edit_author_path' and render withour error" do
    alan = build :author
    alan.save
    visit edit_author_path(alan)
    expect(page).to have_field('author[first_name]')
    expect(page).to have_field('author[last_name]')
    expect(page).to have_field('author[homepage]')
  end
  it "should modify author and save it" do
    alan = build :author
    alan.save
    expect(alan.first_name).to eq('Alan')
    visit edit_author_path(alan)
    page.fill_in 'author[first_name]', with: 'Peter'
    find('input[type="submit"]').click
    alan.reload
    expect(alan.first_name).to eq('Peter')
  end
end
