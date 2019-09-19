class PostsController < ApplicationController                                                                                                                      
    def index
      @posts = Post.all
    end

    def received(data)
      @data = data
    end
  
  end