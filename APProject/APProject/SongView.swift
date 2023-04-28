//
//  SongView.swift
//  FINAL PROJECT.1
//
//  Created by Lillian Anderson23 on 4/9/23.
//

import Foundation

import SwiftUI

struct SongView: View {
    
    @State var allSongs = SongStored.songs(filtered: false)
    @State var isFavorites: Bool = false
    
    var songs: [SongStored] {
        return SongStored.filter(songs: allSongs, liked: isFavorites)
    }
    
    var body: some View {
        
        NavigationView{
            
            VStack{
                List(0..<songs.count, id: \.self) { index in
                    SelectedSongs(song:
                                    Binding(
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
                Button(isFavorites ? "All Songs" : "Liked Songs"){
                    isFavorites.toggle()
                }
            }
        }
    }
    
}




