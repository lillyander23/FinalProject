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
  //  songs = song. when hit the button to filter 
    var body: some View {
        
        NavigationView{
            
                VStack{
                    List(0..<songs.count, id: \.self) { index in
                        
                        ZStack{
                            Rectangle()
                                .frame(width: .infinity, height: .infinity)
                                .ignoresSafeArea(.all)
                            Color("AccentColor2")
//
                                
 
                        VStack{
                            
                            Spacer()
                            Text(songs[index].artistName) //replace for son
                                .fontWeight(.bold)
                                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                                .foregroundColor(Color("AccentColor"))
                            
                            AsyncImage(
                                url: URL(string: songs[index].artworkUrl100)!,
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
                                Text("Release Date: \(songDetails[2])")
                                    .font(.subheadline)
                                    .foregroundColor(Color("AccentColor"))
                                
                            }
                            HStack{
                                NavigationLink(destination: DetailView(name: songDetails[1], artist: songDetails[0], imageURL: songDetails[3])
                                ){
                                    VStack {
                                        Text("Want too hear a song clip?")
                                            .font(.subheadline)
                                            .foregroundColor(Color("AccentColor"))
                                            .frame(maxWidth: 450, maxHeight: .infinity, alignment: .leading)
                                        Text("Click on the music note!")
                                            .font(.subheadline)
                                            .foregroundColor(Color("AccentColor"))
                                            .frame(maxWidth: 450, maxHeight: .infinity, alignment: .leading)
                                    }
                                    Image(systemName: "music.note")
                                        .padding()
                                        .foregroundColor(Color("AccentColor"))
                                }
                            }
                        }
                    }
                    
                }
                   
            }
                .toolbar{
                    Button(action: {isFavorites.toggle()}){
                        Text ("Filtered View")
                            
                    }
                }
        }
        
        }
    }

        struct SongView_Previews: PreviewProvider {
            static var previews: some View {
                SongView()
            }
        }
  

