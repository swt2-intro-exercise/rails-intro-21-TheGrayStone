require 'rails_helper'

describe "Show Author page", type: :feature do
    it "should exist at 'authors_show_path' and render without error" do
        alan = build :author
        alan.save
        visit authors_path(alan)
        expect(page).to have_text('Alan Turing')
    end
end
