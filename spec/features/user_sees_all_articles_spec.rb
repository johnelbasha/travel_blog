require "rails_helper"

# Create three articles:
article_1 = Article.create(title: 'title1', body: '<p>article 1 body</p>')
article_2 = Article.create(title: 'title2', body: '<p>article 2 body</p>')


RSpec.feature "User sees all articles in main page" do
  scenario "The page contains correct number of article html elements" do
    visit "/"

    article_1_body = article_1.body.delete('<p>').delete('/') # Todo: refactor this
    article_2_body = article_2.body.delete('<p>').delete('/') # Todo: refactor this

    page.should have_content(article_1.title)
    page.should have_content(article_1_body)
    page.should have_content(article_1.updated_at)
    page.should have_content(article_2.title)
    page.should have_content(article_2_body)
    page.should have_content(article_2.updated_at)
  end
end