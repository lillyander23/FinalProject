//
//  ContentView.swift
//  APProject
//
//  Created by Lillian Anderson23 on 4/9/23.
//

import SwiftUI
struct ContentView: View {
    
    var body: some View {
        NavigationView{
            ZStack{
                Color("MainColor")
                    .ignoresSafeArea()
                VStack(spacing:60){
                    
                    
                    Image("backgroundImage")
                        .frame(maxWidth: 350, maxHeight:200)
                    
                        .clipShape(Capsule())
                    Text("Top 10 Song Hits of 2022!!")
                        .font(.custom("Apple SD Gothic Neo Heavy",
                                      fixedSize: 34))
                        .foregroundColor(Color("AccentColor2"))
                        .fontWeight(.regular)
                        
                        .multilineTextAlignment(.center)
                   
                    NavigationLink(destination: SongView()){
                        HStack{
                            Text("Click here \n for the next slide:")
                                .font(.custom("Apple SD Gothic Neo Heavy",
                                              fixedSize: 24))
                                .foregroundColor(Color("AccentColor2"))
                                .fontWeight(.regular)
                                
                                .multilineTextAlignment(.center)
                            Image(systemName: "music.note")
                                .foregroundColor(Color("AccentColor2"))
                                
                                .scaleEffect(1.5)
                                .offset(y: 12)
                        }
                    }
                }
            }
        }
    }
}

        struct ContentView_Previews: PreviewProvider {
            static var previews: some View {
                ContentView()
            }
        }
