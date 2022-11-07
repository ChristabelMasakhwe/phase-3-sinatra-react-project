puts "🌱 Seeding spices..."

# Seed your database here
category1 = Category.create(job_type: "Tech")
category2 = Category.create(job_type: "Entertainment")
category3 = Category.create(job_type: "freelance")

joblist1 = JobListing.create(title:"Writer", body:"I have been writing for 10years. I have enough experience.", date:7/11/2022 ,completed: false, category_id:3, user_id:1)
joblist2 = JobListing.create(title:"Software Development", body:"Ruby is an happy and lazy programming language", date:14/11/2022 ,completed: false, category_id:1, user_id:2)

user1 = User.create(name:"Sheilah", location:"Kileleshwa", email:"sheila@gmail.com")
user2 = User.create(name:"Steve", location:"Umoja", email:"amos@gmail.com")
puts "✅ Done seeding!"
