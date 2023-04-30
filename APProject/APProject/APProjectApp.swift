//
//  APProjectApp.swift
//  APProject
//
//  Created by Lillian Anderson23 on 4/9/23.
//

import SwiftUI
import AVFoundation

@main
struct APProjectApp: App {
    
    static var player: AVAudioPlayer = AVAudioPlayer() //this makes it possible to play music
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
    
    static func playSong(song: SongStored) { //https://stackoverflow.com/questions/59404039/how-to-play-audio-using-avaudioplayer-in-swiftui-project used this to create the play and pause functions also used this https://www.hackingwithswift.com/forums/swiftui/playing-sound/4921
        
        guard let url = Bundle.main.url(forResource: song.songName, withExtension: "mp3") else {
            print("\n\n\n Failed to find mp3 for song: \(song.songName)\n\n\n")
            return
            
        }
                
        do {
            APProjectApp.player = try AVAudioPlayer(contentsOf: url)
            APProjectApp.player.prepareToPlay()
            APProjectApp.player.play()
        } catch {
            print(error.localizedDescription)
        }
    }
    
    static func stopSong() {
        APProjectApp.player.stop()
    }
}
