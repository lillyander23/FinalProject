//
//  Functions.swift
//  APProject
//
//  Created by Lillian Anderson23 on 4/9/23.
//

//
//import Foundation
//
import SwiftUI
//
func changeColor(count: Int) -> Color {

    if count == 0 {
        return .gray
    }
    else if count == 1{
        return .pink
    }
        return .gray
    }


    func updateColor(count: Int) -> Int {
        if count == 0{
            return 1
        }
        else if count == 1 {
            return 2
        }
        else if count == 2 {
            return 0
        }
        return 0
    }


