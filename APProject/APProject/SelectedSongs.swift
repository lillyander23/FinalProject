//
//  SelectedSongs.swift
//  APProject
//
//  Created by Lillian Anderson23 on 4/19/23.
//

import SwiftUI

struct SelectedSongs: View{
  @Binding var song: SongStored
    var body: some View{
        
        ZStack{
            Rectangle()
                .frame(width: .infinity, height: .infinity)
                .ignoresSafeArea(.all)
            Color("AccentColor2")
            //
            
            
            VStack{
                
                Spacer()
                Text(song.artistName) //replace for son
                    .fontWeight(.bold)
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
                HStack{
                    NavigationLink {
                        DetailView(song:$song)
                    } label: {
                        Text("")
                    }
                    
                    
                    
                }
            }
            
        }
        
    }
}
