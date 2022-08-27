# frozen_string_literal: true

module Api
  module V1
    class User::ArticlesController < BaseController
      before_action :authenticate

      def index
        render_user_articles
      end

      def create
        article = current_user.articles.new(article_params)
        if article.save
          render_user_articles
        else
          render_error(error_400_options, errors: article.errors.full_messages)
        end
      end

      def update
        article = Article.find(params[:id])
        if article.update(article_params)
          render_user_articles
        else
          render_error(error_400_options, errors: article.errors.full_messages)
        end
      end

      def destroy
        Article.find(params[:id]).destroy!
        render_user_articles
      end

      private

      def article_params
        params.require(:article).permit(:title, :status)
      end

      def render_user_articles
        articles = current_user.articles
        json_string = ArticleSerializer.new(articles).serialized_json
        render json: json_string
      end
    end
  end
end
