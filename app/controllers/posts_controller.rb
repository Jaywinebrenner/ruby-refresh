class PostsController < ApplicationController

    def index
        @posts = Post.all.order("created_at DESC")

    end

    def new
        @post = Post.new
    end
    def create 
        @post = Post.new(post_params)
        if @post.save
            redirect_to posts_path, notice: "you created a post"
        else 
            render :new, alert: "your post wasn't created"
        end
    end

    def show
        @post = Post.find(params[:id])

    end



    private 
    def post_params
        params.require(:post).permit(:title, :body, :subheader, :author)
    end

end
