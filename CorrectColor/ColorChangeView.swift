//
//  ContentView.swift
//  CorrectColor
//
//  Created by Manuilenko, Daryna on 8/24/22.
//

import SwiftUI

struct ColorChangeView: View
{
    var body: some View
    {
        Text("Hello, world!")
            .padding()
    }
    
    func makeRandomColor() -> Color
    {
        let redPercent   : Double = Double (arc4random()  % UInt32 (256)) / 255.0
        let greenPercent : Double = Double (arc4random()  % UInt32 (256)) / 255.0
        let bluePercent  : Double = Double (arc4random()  % UInt32 (256)) / 255.0
        return Color (red:redPercent, green: greenPercent, blue: bluePercent)
    }
}

struct ContentView_Previews: PreviewProvider
{
    static var previews: some View
    {
        ColorChangeView()
    }
}
