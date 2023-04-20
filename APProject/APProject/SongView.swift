//
//  SongView.swift
//  FINAL PROJECT.1
//
//  Created by Lillian Anderson23 on 4/9/23.
//

import Foundation

import SwiftUI

struct SongView: View {
    
    @State var songs = SongStored.songs()
    @State var isFavorites: Bool = false
    
    var songsList = songs 
    var body: some View {
        
        NavigationView{
            
            VStack{
                List(0..<songs.count, id: \.self) { index in
                    SelectedSongs(song: $songs[index])
                    
                }
                
            }
            .toolbar{
                
                Button("Liked Songs"){
                    isFavorites.toggle()
                }
                    
                
                }
                
            }
        .onChange(of: isFavorites) { _ in
            if isFavorites{
                songs = SongStored.filtered 
            }
        }
            
        }
    }






struct SongView_Previews: PreviewProvider {
    static var previews: some View {
        SongView()
    }
}


