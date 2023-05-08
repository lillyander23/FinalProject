//
//  SongView.swift
//  FINAL PROJECT.1
//
//  Created by Lillian Anderson23 on 4/9/23.
//

import Foundation

import SwiftUI

struct SongView: View {
    @StateObject var musicManager = MusicManager()
    
    @State var allSongs : [SongStored] = []
    @State var isFavorites: Bool = false
    
//    var songs: [SongStored] {
//        return musicManager.filter(songs: allSongs, liked: isFavorites)
//    }
    
    var body: some View {
        
        NavigationView{
            
            VStack{
                List(0..<allSongs.count, id: \.self) { index in
                    SelectedSongs(song:
                                    Binding( //created custom binding to connect SelectedSongs SongStored and SongView so they can store and pass data and display changes to that data on the SongView, followed this to create the custom binding https://www.hackingwithswift.com/quick-start/swiftui/how-to-create-custom-bindings, this allowed the function filtered to function
                                        get: { allSongs[index] },
                                        set: {
                                            let index = allSongs.firstIndex { $0.id == allSongs[index].id }!
                                            allSongs[index] = $0
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
        .onAppear{
            allSongs = musicManager.songs(filtered: false)
        }
    }
    
}




