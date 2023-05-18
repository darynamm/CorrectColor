//
//  ContentView.swift
//  CorrectColor
//
//  Created by Manuilenko, Daryna on 8/24/22.
//

import SwiftUI

struct ColorChangeView: View
{
    @State private var backgroundColor: Color = .indigo
    var body: some View
    {
        ZStack
        {
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            VStack
            {
                Text("Color app!")
                    .fontWeight(.heavy)
                
                    .foregroundColor(Color.white)
                Button("click here", action: changeBackground)
                    .foregroundColor(Color.white)
            }
        }
    
    }
    
    func makeRandomColor() -> Color
    {
        let redPercent   : Double = Double (arc4random()  % UInt32 (256)) / 255.0
        let greenPercent : Double = Double (arc4random()  % UInt32 (256)) / 255.0
        let bluePercent  : Double = Double (arc4random()  % UInt32 (256)) / 255.0
        return Color (red:redPercent, green: greenPercent, blue: bluePercent)
    }
    
    func changeBackground() -> Void
    {
        self.backgroundColor = makeRandomColor()
    }
}

struct ContentView_Previews: PreviewProvider
{
    static var previews: some View
    {
        ColorChangeView()
    }
}
