# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:

["Action", "Comedy"].each_with_index do |genre_name, index|
  User.find_or_create_by!(name: genre_name, role: index)
end

["Group 1", "Group 2"].each do |genre_name|
  Organization.find_or_create_by!(name: genre_name)
end

["Iphone", "Android", "Nokia"].each_with_index do |genre_name, index|
  Device.find_or_create_by!(name: genre_name, os: index)
end


