module ArtistsHelper

    # should respond to #display_artist with 1 argument
    # displays a link to edit the song if artist empty
    # displays a link to the artist page if artist not empty
 
    def display_artist(song)
        artist = song.artist
        artist ? link_to(artist.name, artist_path(artist)) : link_to("Add Artist", edit_song_path(song))
    end


    # def display_artist(song)
    #     if song.artist.present?
    #     link_to song.artist.name, artist_path(song.artist)
    #     else
    #     link_to "Add Artist", edit_song_path(song)
    #   end
    # end
end
