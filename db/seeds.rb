# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# artist1 = Artist.create({
#     :name => "Joji",
#     :albums => Album.create({
#         :title => "Smithereens",
#         :genre => "Lo-fi",
#         :artist_id => artist1.id,
#         :tracks => Track.create({
#             :name => "Die For You",
#             :length => "3:31",
#             :genre => "Lo-fi",
#             :release_date => "04/11/2022",
#             :album_id => artist1.albums.first.id,
#             :artist_id => artist1.id
#         })
#     })
# })

# track1 = Track.create({
#     :name => "Die For You",
#     :length => "3:31",
#     :genre => "Lo-fi",
#     :release_date => "04/11/2022"
#     # :album_id => artist1.albums.first,
#     # :artist_id => artist1
# })

# album1 = Album.create({
#     :title => "Smithereens",
#     :genre => "Lo-fi",
#     # :artist_id => artist1
# })

# artist1 = Artist.create({
#     :name => "Joji",
#     :albums => [album1]
# })

# album1.artist_id = artist1.id
# track1.album_id = album1.id
# track1.artist_id = artist1.id

# track1 = Track.create({
#     :name => "Die For You",
#     :length => "3:31",
#     :genre => "Lo-fi",
#     :release_date => "04/11/2022",
#     :album_id => artist1.albums.first,
#     :artist_id => artist1
# })

# artist1.albums.first.tracks << track1

#-----Joji
#--------Smithereens
#-----------Die For You
#-----------Glimpse of Us
#--------Nectar
#-----------Gimme Love
#-----------MODUS
artist1 = Artist.create({
    :name => "Joji"
})
artist1.albums.create({
    :title => "Smithereens",
    :genre => "Lo-fi",
    :artist_id => artist1.id
})
artist1.albums.last.tracks.create({
    :name => "Die For You",
    :length => "3:31",
    :genre => "Lo-fi",
    :release_date => "04/11/2022",
    :album_id => artist1.albums.last.id,
    :artist_id => artist1.id
})
artist1.albums.last.tracks.create({
    :name => "Glimpse of Us",
    :length => "3:54",
    :genre => "Lo-fi",
    :release_date => "04/11/2022",
    :album_id => artist1.albums.last.id,
    :artist_id => artist1.id
})

artist1.albums.create({
    :title => "Nectar",
    :genre => "Lo-fi",
    :artist_id => artist1.id
})
artist1.albums.last.tracks.create({
    :name => "Gimme Love",
    :length => "3:34",
    :genre => "Lo-fi",
    :release_date => "25/09/2020",
    :album_id => artist1.albums.last.id,
    :artist_id => artist1.id
})
artist1.albums.last.tracks.create({
    :name => "MODUS",
    :length => "3:27",
    :genre => "Lo-fi",
    :release_date => "25/09/2020",
    :album_id => artist1.albums.last.id,
    :artist_id => artist1.id
})

artist1.save!