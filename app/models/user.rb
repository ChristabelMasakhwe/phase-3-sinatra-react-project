class User < ActiveRecord::Base
    has_many :job_listings
    has_many :categories, through: :job_listings
end