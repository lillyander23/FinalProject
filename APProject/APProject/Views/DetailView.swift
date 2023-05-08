//
//  DetailView.swift
//  APProject
//
//  Created by Lillian Anderson23 on 4/9/23.
//

import Foundation
import AVFoundation
import SwiftUI

struct DetailView: View {
    @EnvironmentObject var musicManager: MusicManager
    @Binding var song: SongStored //once again creating a connection between SongStored and DetailView 
    
    @State var isPlaying = false
 
    var body: some View {
       
        
        NavigationView{
        VStack{
            ZStack{
                AsyncImage(
                    url: URL(string:song.artworkUrl100)!,
                    content: { image in
                        image.resizable()
                            .scaledToFit()
                            .frame(height: UIScreen.main.bounds.height / 3)
                            .cornerRadius(30)
                    },
                    placeholder: {
                        ProgressView()
                        
                    }
                )
            }
                Spacer()
            Text(song.artistName)
                    .fontWeight(.bold)
                    .font(.custom("AmericanTypewriter",
                                  fixedSize: 35))
                    .foregroundColor(Color("AccentColor"))
                    .fontWeight(.regular)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .multilineTextAlignment(.center)
                    .padding(10)
                
                Text("Song Details:")
                    .font(.custom("AmericanTypewriter",
                                  fixedSize: 25))
                    .foregroundColor(Color("AccentColor"))
                    .fontWeight(.semibold)
                    .frame(maxWidth: 350, maxHeight: 50)
                    .multilineTextAlignment(.center)
            
            Button(action: { //attaches an action to the play and pause button through the variable isPlaying
                isPlaying.toggle()
                if isPlaying {
                    musicManager.playSong(song: song)
                } else {
                    musicManager.stopSong()
                }
            }) {
                Image(systemName: isPlaying ? "pause" : "play.fill").resizable() //this displays the play and pause button and uses the variable isPlaying
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 20.0, height: 20.0)
                
                
            }
            Button(action: { song.liked.toggle() }) {
                Image(systemName: song.liked ? "heart.fill" : "heart").resizable() //this displays the heart button and uses the variable song to pass in songStored
            }
  
            .frame(width: 20, height: 20)
            .padding()
            Text(song.songName)
                    .font(.system(size: 20))
                    .minimumScaleFactor(0.005)
                    .frame(maxWidth:.infinity, maxHeight:.infinity)
                    .foregroundColor(Color("AccentColor"))
                    .fontWeight(.regular)
                    .multilineTextAlignment(.center)
                    .padding(15)

                   
            }
       
            }
        }
    
}


