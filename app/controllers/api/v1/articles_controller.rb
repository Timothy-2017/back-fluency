module Api
  module V1
    class ArticlesController < ApplicationController

      def show
        render json: Article.last
      end

      def index
        render json: Article.all
      end


      def create
        @article = Article.create(text: params[:article], title: params[:title])
        language = params[:title]
        text = params[:article]
        @article.translate
        render json: @article
      end

      def edit

      end

      def update

      end

      def destroy

      end

      # private
      #
      # def article_params
      #   params.require(:article).permit(:text)
      # end
    end
  end
end
