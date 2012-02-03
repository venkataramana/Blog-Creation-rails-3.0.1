class Blog < ActiveRecord::Base
        has_many :commentings, :dependent => :destroy
        #belongs_to :admin_users
end

