require 'rails_helper'

RSpec.describe Article, type: :model do
  scenario "Only creates a new article if title is provided" do
    article = Article.new
    
    expect(article).to_not be_valid
  end 

  scenario "Only creates a new article if body is provided" do
    article = Article.new
    article.title = "title"
    
    expect(article).to_not be_valid
  end 
end
