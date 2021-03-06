class ArticlesController < ApplicationController

	def index
		@articles = Article.all
		@reviews = Review.all
		@new_review = Review.new
	end

	def new
		@article = Article.new
	end

	def create
		current_user.articles.create(article_params)
		redirect_to articles_path
	end

	def show
		@article = Article.find(params[:id])
	end

	private

	def article_params
		params.require(:article).permit(:body)
	end

end
