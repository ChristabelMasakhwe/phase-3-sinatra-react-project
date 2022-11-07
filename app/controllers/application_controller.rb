class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end
  get "/categories" do
    Category.all.to_json
  end
  post "/categories" do
    new_category = Category.create(
      job_type: params[:job_type]
    )
    new_category.to_json
  end
  get "/categories/:id" do
    category = Category.find(params[:id])
    category.to_json
  end

  get "/job_listings" do
    JobListing.all.to_json
  end
  get "/job_listings/:id" do
    job_listing = JobListing.find(params[:id])
    job_listing.to_json
  end
  post "/job_listings" do
    new_job = JobListing.create(
      title: params[:title],
      body: params[:body],
      date: params[:date],
      category_id: params[:category_id],
      user_id: params[:user_id]
    )
    new_job.to_json
  end
  patch "/job_listings/:id" do
    job_listing = JobListing.find(params[:id])
    job_listing.update(
      title: params[:title],
      body: params[:body]
    )
    job_listing.to_json
  end
  get "/users" do
    User.all.to_json
  end
  get "/users/:id" do
    user = User.find(params[:id])
    user.to_json
  end
  post "/users" do
    new_user = User.create(
      name: params[:name],
      location: params[:location],
      email: params[:email]
    )
    new_user.to_json
  end
  delete "/users/:id" do
   user = User.find(params[:id])
   user.destroy
   user.to_json
  end
end
