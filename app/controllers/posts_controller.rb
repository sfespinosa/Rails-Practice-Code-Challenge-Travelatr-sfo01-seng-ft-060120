class PostsController < ApplicationController
    before_action :set_post, only: [:show, :edit, :update, :like]

    def new
        @post = Post.new
    end

    def create
        @post = Post.new(post_params)
        if @post.save
            redirect_to @post
        else 
            render :new
        end
    end

    def update
        if @post.update(post_params)
            redirect_to @post
        else 
            render :edit
        end
    end

    def like
        @post.likes += 1
        @post.save
        redirect_to @post
    end

    private
    def set_post
        @post = Post.find(params[:id])
    end

    def post_params
        params.require(:post).permit(:title, :content, :blogger_id, :destination_id, )
    end
end