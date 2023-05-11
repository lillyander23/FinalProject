//
//  SelectedSongs.swift
//  APProject
//
//  Created by Lillian Anderson23 on 4/19/23.
//

import SwiftUI

struct SelectedSongs: View{
    @ObservedObject var musicManager : MusicManager
    
  @Binding var song: SongStored
    
    var body: some View{
        

        //used to store the details of songView
        ZStack{
        
            VStack{
                
       
                Text(song.artistName)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                    .foregroundColor(Color("AccentColor"))
                Spacer()
                Text(song.songName)
                    .fontWeight(.semibold)
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                    .foregroundColor(Color("AccentColor"))
                
                AsyncImage(
                    url: URL(string:song.artworkUrl100)!,
                    content: { image in
                        image.resizable()
                            .scaledToFit()
                            .frame(height:150)
                            .cornerRadius(12)
                    },
                    placeholder: {
                        ProgressView()
                    }
                )
                HStack {
                    Text("Release Date: \(song.releaseDate)")
                        .font(.subheadline)
                        .foregroundColor(Color("AccentColor"))
                    
                }
               
                }
                HStack{
                    NavigationLink {
                        DetailView(musicManager: musicManager, song:$song)
                    } label: {
                        Text("")
                    }
                    
             
                        
                        
                    }
                    
                }
                
            }
            
        }
        
    
    

