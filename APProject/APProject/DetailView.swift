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
    
    @Binding var song: SongStored
    
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
                        SongView()
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
            
            Button(action: {
                isPlaying.toggle()
                if isPlaying {
                    playSong()
                } else {
                    stopSong()
                }
            }) {
                Image(systemName: isPlaying ? "pause" : "play.fill").resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 20.0, height: 20.0)
            }
            Button(action: { song.liked.toggle() }) {
                Image(systemName: song.liked ? "heart.fill" : "heart").resizable()
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
//            Slider()
                   
            }
       
            }
        }
    
    func playSong() {
        APProjectApp.playSong(song: song)
    }
    
    func stopSong() {
        APProjectApp.stopSong()
    }
}


