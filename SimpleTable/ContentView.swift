//
//  ContentView.swift
//  SimpleTable
//
//  Created by Madeline Burton on 11/28/2022.
//

import SwiftUI

struct ContentView: View {
    let resturantsNames: [String] = ["Travail Kitchen and Amusements","Hai Hai","Nixta Tortilleria & Mexican takeout","Sammy’s Avenue Eatery","Kramarczuk Sausage Company","Union Hmong Kitchen","Soul Bowl","Spoon and Stable","Billy Sushi ビリー寿司","Restaurant Alma","Owamni by The Sioux Chef","Zen Box Izakaya","Manny's Steakhouse","Keefer Court","Pimento Jamaican Kitchen & Rum Bar","Lu's Sandwiches","Quang Restaurant","Sooki & Mimi","Manny's Tortas","Taqueria y Birrieria Las Cuatro Milpas"]
    let images = ["Travail", "HaiHai","Nixta","Sammys","kramarczuk","hmongKitchen","soulbowl","spoonstable","billysushi","RestaurantAlma","Owamni","ZenBox","Mannys","keefer","Pimento","lus","Quang","sooki","Mannys","Taqueria"]
    var body: some View {
        VStack{
            Text ("Minneapolis Resturants")
                .font(.title3)
                .fontWeight(.heavy)
                .padding()
        }
        List {
            ForEach(0...resturantsNames.count - 1, id: \.self) { index in
                HStack{
                    Image("resturant")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .cornerRadius(4)
                }
            }
            .lifeStyle(.plain)
        }
    }
}

