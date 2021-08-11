Rails.application.routes.draw do
get '/blogs' => 'blog_post#index', as: 'blog_posts'
root 'blog_post#index'
get 'blogs/new' => 'blog_post#new', as: 'new_blog_post'
get 'blogs/:id' => 'blog_post#show', as: 'blog_post'
post 'blogs' => 'blog_post#create'
end
