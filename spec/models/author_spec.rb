require 'rails_helper'

describe "Author", type: :model do
    it "should have a first name, last name and homepage" do
        author = build :author
        expect(author.first_name).to eq('Alan')
        expect(author.last_name).to eq('Turing')
        expect(author.homepage).to eq('http://wikipedia.de/Alan_Turing')
    end
    it "should have a method name that returns the full name" do
        author = build :author
        expect(author.name).to eq('Alan Turing')
    end
    it "should not validate without last_name" do
        alan = build :invalid_author
        expect(alan).to_not be_valid
    end
end
