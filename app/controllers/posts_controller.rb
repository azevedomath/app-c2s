class PostsController < ApplicationController                                                                                                                      
    def index
      @posts = Post.all
    end

    def received
    end
  
  end