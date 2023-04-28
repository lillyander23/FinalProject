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
    
    static var player: AVAudioPlayer = AVAudioPlayer()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
    
    static func playSong(song: SongStored) {
        
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
