//
//  DetailView.swift
//  APProject
//
//  Created by Lillian Anderson23 on 4/9/23.
//

import Foundation
import SwiftUI
struct DetailView: View {
    var name : String
    var artist: String
    var imageURL: String
 
    var body: some View {
 
        NavigationView{
        VStack{
            ZStack{
                AsyncImage(
                    url: URL(string:imageURL)!,
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
            Text(artist)
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
            
            Button(action: {}) {
                Image(systemName: "heart.fill").resizable()
            }
  
            .frame(width: 20, height: 20)
            .padding()
                Text(name)
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
    }
struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(name: songNameTop25[0], artist: artistNameTop25[0], imageURL: artworkUrl100Top25[0])
    }
}

