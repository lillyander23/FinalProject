//
//  SongView.swift
//  FINAL PROJECT.1
//
//  Created by Lillian Anderson23 on 4/9/23.
//

import Foundation

import SwiftUI

//struct SongView: View {
//    @EnvironmentObject var musicManager: MusicManager
//    @State var isFavorites: Bool = false
//    @State var allSongs: [SongStored] // Declare allSongs as a state variable
//
//    init() {
//        // Initialize allSongs in the init method after musicManager is available
//        allSongs = musicManager.songs(filtered: false);)
//    }
//
//    var songs: [SongStored] {
//        return musicManager.filter(songs: allSongs, liked: isFavorites)
//    }
//    var body: some View {
//
//        NavigationView{
//
//            VStack{
//                List(0..<songs.count, id: \.self) { index in
//                    SelectedSongs(song:
//                                    Binding( //created custom binding to connect SelectedSongs SongStored and SongView so they can store and pass data and display changes to that data on the SongView, followed this to create the custom binding https://www.hackingwithswift.com/quick-start/swiftui/how-to-create-custom-bindings, this allowed the function filtered to function
//                                        get: { songs[index] },
//                                        set: {
//                                            let index = allSongs.firstIndex { $0.id == songs[index].id }!
//                                            allSongs[index] = $0
//                                        }
//                                    )
//                    )
//                }
//
//            }
//            .toolbar{
//                Button(isFavorites ? "All Songs" : "Liked Songs"){ //this button is the toggle between the filtered and unfiltered view
//                    isFavorites.toggle()
//                }
//            }
//        }
//    }
//
//}

//
//struct SongView: View {
//    @EnvironmentObject var musicManager: MusicManager
//
//    @State var isFavorites: Bool = false
//
//    var songs: [SongStored] {
//        return musicManager.filter(songs: musicManager.songs(filtered: false), liked: isFavorites)
//    }
//
//    var body: some View {
//        NavigationView{
//            VStack{
//                List(0..<songs.count, id: \.self) { index in
//                    SelectedSongs(song:
//                        Binding(
//                            get: { self.songs[index] },
//                            set: {_ in
//                                let allSongs = self.musicManager.songs(filtered: false)
//                                _ = allSongs.firstIndex { $0.id == self.songs[index].id }!
//                                self.musicManager.filter(songs: songs, liked: isFavorites)
//                            }
//                        )
//                    )
//                }
//            }
//            .toolbar{
//                Button(isFavorites ? "All Songs" : "Liked Songs"){
//                    isFavorites.toggle()
//                }
//            }
//        }
//    }
//}

//ORIGINAL CODE
struct SongView: View {
    @StateObject var musicManager = MusicManager()
    @State var isFavorites: Bool = false
            
    var body: some View {
       
        NavigationView{
            let songs = musicManager.songs(filtered:false)
            VStack{
                List(0..<songs.count, id: \.self) { index in
                    SelectedSongs(musicManager: musicManager, song:
                                    Binding( //created custom binding to connect SelectedSongs SongStored and SongView so they can store and pass data and display changes to that data on the SongView, followed this to create the custom binding https://www.hackingwithswift.com/quick-start/swiftui/how-to-create-custom-bindings, this allowed the function filtered to function
                                        get: { songs[index] },
                                        set: {
                                            print(songs[index].id)
                                            print(
                                            let index = musicManager.allSongs.firstIndex { $0.id == songs[index].id }! //error occours when heart is liked
                                            musicManager.allSongs[index] = $0
                                        }
                                    )
                                  
                    )
                }

            }
            .toolbar{
                Button(isFavorites ? "All Songs" : "Liked Songs"){ //this button is the toggle between the filtered and unfiltered view
                    isFavorites.toggle()
                   
                    
                }
            }
        }
    }

}
