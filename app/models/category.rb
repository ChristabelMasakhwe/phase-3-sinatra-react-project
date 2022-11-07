class Category < ActiveRecord::Base
    has_many :job_listings
    has_many :users, through: :job_listings
end