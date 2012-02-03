ActiveAdmin.register Commenting do
        index do
                column "Cpmment", :comment_posted
                column "Posted_At", :created_at
        end
        filter :title
        filter :post
        filter :created_at
end

