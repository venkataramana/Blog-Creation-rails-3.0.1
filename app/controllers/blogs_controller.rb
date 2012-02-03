class BlogsController < ApplicationController
        def index
             @posts=Blog.page().per(20)
             @comment_count=Blog.find_by_sql "SELECT p.post, c.comment_posted from blogs p, commentings c WHERE p.id=c.id"
        end
        def show
                @post= Blog.find(params[:id])
                @comments=Commenting.find(:all, :conditions=>['blog_id=?', params[:id]])
        end
        def create
                @comment=Commenting.new(params[:commenting])
                if @comment.save
                        render :update do |page|
                            @comments=Commenting.find(:all, :conditions=>['blog_id=?', params[:commenting][:blog_id]])
                             page.replace_html 'commentlist', :partial => 'commentlist'
                        end
                else
                        render :action=>"show"
                end
        end
end

