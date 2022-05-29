class PagesController < ApplicationController
  def main
    @articles = Article.all
  end
end
