//
//  ContentView.swift
//  Dicee-SwiftUI
//
//  Created by Baris Karalar on 10.07.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var leftDiceNumber = 1
    @State private var rightDiceNumber = 1
    
    var body: some View {
        
        ZStack {
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
                 
            VStack {
                Image("diceeLogo")
                Spacer()
                 HStack {
                    Spacer()
                    DiceView(n: leftDiceNumber)
                    Spacer()
                    DiceView(n: rightDiceNumber)
                    Spacer()
                    
                }
                .padding()
                Spacer()
                Button(action: {
                    leftDiceNumber = Int.random(in: 1...6)
                    rightDiceNumber = Int.random(in: 1...6)
                }, label: {
                    Text("Roll")
                        .font(.system(size: 40))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                })
                .background(Color.red)

            }
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct DiceView: View {
    
    var n: Int
    
    var body: some View {
        
        Image("dice\(n)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .frame(width: 100, height: 100, alignment: .center)
    }
}
