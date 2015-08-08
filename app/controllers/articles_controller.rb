class ArticlesController < ApplicationController
    def new
    end

    def create
        @article = Article.new(articles_params)

        @article.save
        redirect_to @article
    end

    def show
    end

    private
    def articles_params
        params.require(:article).permit(:title, :text)
    end
end
