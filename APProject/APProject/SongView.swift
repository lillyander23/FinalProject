//
//  SongView.swift
//  FINAL PROJECT.1
//
//  Created by Lillian Anderson23 on 4/9/23.
//

import Foundation

import SwiftUI

struct SongView: View {
    
    @State var allSongs = SongStored.songs(filtered: false) //created var to store SongStored
    @State var isFavorites: Bool = false
    
    var songs: [SongStored] {
        return SongStored.filter(songs: allSongs, liked: isFavorites)
    }
    
    var body: some View {
        
        NavigationView{
            
            VStack{
                List(0..<songs.count, id: \.self) { index in
                    SelectedSongs(song:
                                    Binding( //created custom binding to connect SelectedSongs SongStored and SongView so they can store and pass data and display changes to that data on the SongView, followed this to create the custom binding https://www.hackingwithswift.com/quick-start/swiftui/how-to-create-custom-bindings, this allowed the function filtered to function
                                        get: { songs[index] },
                                        set: {
                                            let index = allSongs.firstIndex { $0.id == songs[index].id }!
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
    }
    
}




