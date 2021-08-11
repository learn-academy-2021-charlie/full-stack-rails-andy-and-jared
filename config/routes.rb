Rails.application.routes.draw do
get '/blogs' => 'blog_post#index', as: 'blog_posts'
root 'blog_post#index'
get 'blogs/new' => 'blog_post#new', as: 'new_blog_post'
get 'blogs/:id' => 'blog_post#show', as: 'blog_post'
post 'blogs' => 'blog_post#create'
delete '/blogs/:id' => 'blog_post#destroy', as: 'delete_blog_post' 
get 'blogs/:id/edit' => 'blog_post#edit', as: 'edit_blog_post'
patch 'blogs/:id'  => 'blog_post#update'
end
