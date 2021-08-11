class BlogPostController < ApplicationController
    def index
        @blogs = BlogPost.all
    end 

    def show
        @blogs = BlogPost.find(params[:id])
    end

    def new
        @blogs = BlogPost.new
    end

    def create 
        @blogs = BlogPost.create(blog_params)
        if @blogs.valid?
            redirect_to blog_posts_path
        else 
            redirect_to new_blog_post_path
        end 
    end

    private
    def blog_params
        params.require(:blog_post).permit(:title, :content)
    end
end
