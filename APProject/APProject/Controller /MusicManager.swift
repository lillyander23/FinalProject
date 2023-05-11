//
//  MusicManager.swift
//  APProject
//
//  Created by Lillian Anderson23 on 5/4/23.
//

import Foundation
import SwiftUI
import AVFoundation


class MusicManager: ObservableObject{
    var player: AVAudioPlayer = AVAudioPlayer()
    @Published var allSongs : [SongStored] = []
    
    
    init(){
        allSongs = songs(filtered: false)
    }
    
    func songs(filtered: Bool) -> [SongStored]{ //creates the function that rotates through the values in songs which appears in the unfilteredview
        
        var top25Songs: [SongStored] = []
        
        for i in 0...9 {
            let song = SongStored(artistName: artistNameTop25[i], songName: songNameTop25[i], releaseDate: releaseDateTop25[i], artworkUrl100: artworkUrl100Top25[i], liked: false)
            top25Songs.append(song)
        }
        
        return top25Songs
    }
    
    
  func filter(liked: Bool) -> [SongStored] { //creates the function that filters the songs through the liked bool and the function songs, makes it possible to like a song and then click on a button to view the new filtered view, connects songs with either being liked or untouched
        
        if liked {
            
            var likedSongs: [SongStored] = []
            
            for song in allSongs {
                if song.liked == true{
                    likedSongs.append(song)
                }
            }
            return likedSongs
        } else {
            return allSongs
        }
    }

    
    
 func playSong(song: SongStored) { //https://stackoverflow.com/questions/59404039/how-to-play-audio-using-avaudioplayer-in-swiftui-project used this to create the play and pause functions also used this https://www.hackingwithswift.com/forums/swiftui/playing-sound/4921
    
     guard let url = Bundle.main.url(forResource: song.songName, withExtension: "mp3") else {
        print("song failed ")
        return
        
    }
            
    do {
        player = try AVAudioPlayer(contentsOf: url)
        player.prepareToPlay()
        player.play()
    } catch {
        print(error.localizedDescription)
    }
}

    func stopSong() {
    player.stop()
}
}
