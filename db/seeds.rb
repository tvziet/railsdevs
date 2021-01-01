# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
# Create users
User.all.each do |user|
  user.jobs.delete_all
  user.delete
end

admin = User.new(email: 'vietleuit@gmail.com', password: 'Viet@123', password_confirmation: 'Viet@123',
                 admin: true, developer: true, employer: true)
admin.skip_confirmation!
admin.save
puts 'Created admin user!'

developer = User.new(email: 'alibaba@gmail.com', password: 'Alibaba@123', password_confirmation: 'Alibaba@123',
                 admin: true, developer: true, employer: false)
developer.skip_confirmation!
developer.save
puts 'Created developer!'

employer = User.new(email: 'aladin@gmail.com', password: 'Aladin@123', password_confirmation: 'Aladin@123',
                     admin: true, developer: false, employer: true)
employer.skip_confirmation!
employer.save
puts 'Created employer!'

# Create jobs
Job.create!(
  id: 1,
  company_name: "Google",
  company_website: "https://google.com",
  compensation_range: JOB::COMPENSATION_RANGES[5],
  compensation_type: 1,
  estimated_hours: nil,
  featured: true,
  featured_until: 1.week.from_now.beginning_of_day,
  headquarters: "New York",
  link_to_apply: "https://google.com/apply",
  price: 199,
  published_at: DateTime.now,
  remote: false,
  slug: "rails-developer-at-google",
  status: 1,
  title: "Rails developer at Google",
  upsell_type: nil,
  years_of_experience: JOB::YEARS_OF_EXPERIENCE_RANGE[4],
  description: Faker::Hipster.paragraph,
  company_description: Faker::Hipster.paragraph,
  user_id: admin.id
)

puts 'Created job!'

Job.create!(
  id: 2,
  company_name: "ITviec",
  company_website: "https://itviec.com",
  compensation_range: JOB::COMPENSATION_RANGES[3],
  compensation_type: 1,
  estimated_hours: nil,
  featured: true,
  featured_until: 1.week.from_now.beginning_of_day,
  headquarters: "New York",
  link_to_apply: "https://itviec.com/apply",
  price: 199,
  published_at: DateTime.now,
  remote: false,
  slug: "rails-developer-at-itviec",
  status: 1,
  title: "Rails developer at ITviec",
  upsell_type: "best",
  years_of_experience: JOB::YEARS_OF_EXPERIENCE_RANGE[1],
  description: Faker::Hipster.paragraph,
  company_description: Faker::Hipster.paragraph,
  user_id: developer.id
)

puts 'Created job!'

Job.create!(
  id: 3,
  company_name: "FXCE",
  company_website: "https://fxce.com",
  compensation_range: JOB::COMPENSATION_RANGES[2],
  compensation_type: 1,
  estimated_hours: nil,
  featured: true,
  featured_until: 1.week.from_now.beginning_of_day,
  headquarters: "California",
  link_to_apply: "https://fxce.com/apply",
  price: 199,
  published_at: DateTime.now,
  remote: true,
  slug: "rails-developer-at-fxce",
  status: 1,
  title: "Rails developer at FXCE",
  upsell_type: "best",
  years_of_experience: JOB::YEARS_OF_EXPERIENCE_RANGE[2],
  description: Faker::Hipster.paragraph,
  company_description: Faker::Hipster.paragraph,
  user_id: employer.id
)

puts 'Created job!'