# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require 'open-uri'

Rent.destroy_all
PadelCourt.destroy_all
PadelCenter.destroy_all
User.destroy_all

User.create!(email: "toto@gmail.com", password: "azerty", first_name: "toto", last_name: "toto")
User.create!(email: "tata@gmail.com", password: "azerty", first_name: "tata", last_name: "tata")


PadelCenter.create!(name: "Padel Club", address: "1 rue de la paix, 13008 Marseille", phone_number: "0445879632", user: User.first)
file1 = URI.parse("https://images.unsplash.com/photo-1709587823347-4e178eda58cd?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8cGFkZWx8ZW58MHx8MHx8fDA%3D").open
padelcenter1 = PadelCenter.all[0].photo.attach(io: file1, filename: "padelcenter-1", content_type: "image/png")

PadelCenter.create!(name: "Padel fortune", address: "30 rue de la corniche, 13007 Marseille", phone_number: "0445879645", user: User.first)
file2 = URI.parse("https://images.unsplash.com/photo-1709587823878-8aa03f230d81?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTA1fHxwYWRlbHxlbnwwfHwwfHx8MA%3D%3D").open
padelcenter2 = PadelCenter.all[1].photo.attach(io: file2, filename: "padelcenter-2", content_type: "image/png")

PadelCenter.create!(name: "Padel Libre", address: "40 Chemin du poulpe, 13011 Marseille", phone_number: "0445879667", user: User.last)
file3 = URI.parse("https://images.unsplash.com/photo-1689942963385-f5bd03f3b270?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTl8fHBhZGVsfGVufDB8fDB8fHww").open
padelcenter3 = PadelCenter.all[2].photo.attach(io: file3, filename: "padelcenter-3", content_type: "image/png")

PadelCourt.create!(number: "1", content: "Bien exposé au soleil", padel_center: PadelCenter.first)
file4 = URI.parse("https://images.unsplash.com/photo-1709587823553-765b325cc31b?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fHBhZGVsfGVufDB8fDB8fHww").open
padelcourt1 =  PadelCourt.all[0].photo.attach(io: file4, filename: "padelcourt-1", content_type: "image/png")

PadelCourt.create!(number: "2", content: "Bien exposé au soleil", padel_center: PadelCenter.first)
file5 = URI.parse("https://plus.unsplash.com/premium_photo-1708692919464-b5608dd10542?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8cGFkZWx8ZW58MHx8MHx8fDA%3D").open
padelcourt2 =  PadelCourt.all[1].photo.attach(io: file5, filename: "padelcourt-2", content_type: "image/png")

PadelCourt.create!(number: "1", content: "Glissant l'hiver", padel_center: PadelCenter.second)
file6 = URI.parse("https://images.unsplash.com/photo-1689942963385-f5bd03f3b270?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTl8fHBhZGVsfGVufDB8fDB8fHww").open
padelcourt3 =  PadelCourt.all[2].photo.attach(io: file6, filename: "padelcourt-3", content_type: "image/png")

PadelCourt.create!(number: "2", content: "Attention au vent", padel_center: PadelCenter.second)
file7 = URI.parse("https://images.unsplash.com/photo-1709587824751-dd30420f5cf3?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mzl8fHBhZGVsfGVufDB8fDB8fHww").open
padelcourt4 =  PadelCourt.all[3].photo.attach(io: file7, filename: "padelcourt-4", content_type: "image/png")

PadelCourt.create!(number: "1", content: "Terrain rapide, Pour les meilleurs, en es-tu ?", padel_center: PadelCenter.last)
file8 = URI.parse("https://images.unsplash.com/photo-1709587825135-80b00570c355?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mjh8fHBhZGVsfGVufDB8fDB8fHww").open
padelcourt5 =  PadelCourt.all[4].photo.attach(io: file8, filename: "padelcourt-1", content_type: "image/png")

puts "#{PadelCenter.count} PadelCenters are created"
puts "#{PadelCourt.count} PadelCourts are created"
puts "#{User.count} Users are created"