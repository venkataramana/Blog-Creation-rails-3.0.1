ActiveAdmin.register Blog do
        index do
                column "Blog Title" , :sortable=> :title do |blog|
                                link_to blog.title, edit_admin_blog_path(blog.id)
                end
                column "Post", :post
                column "Posted_At", :created_at
        end
=begin        controller do
            def index
                @posts=Blog.find(:all, :conditions=>['admin_user_id=?', '1'])
                #render :text=> @posts.inspect and return false
            end
        end
=end
        form do |f|
                 f.inputs "Blog Details" do
                        f.input :title
                        f.input :post
                        f.input :admin_user_id, :input_html => { :value => "1" }
                end
                f.buttons
       end
        filter :title
        filter :post
        filter :created_at
end

