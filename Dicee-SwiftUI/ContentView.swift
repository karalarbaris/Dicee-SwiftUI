//
//  ContentView.swift
//  Dicee-SwiftUI
//
//  Created by Baris Karalar on 10.07.2021.
//

import SwiftUI

struct ContentView: View {
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
                    DiceView(imageName: "dice1")
                    Spacer()
                    DiceView(imageName: "dice3")
                    Spacer()
                    
                }
                .padding()
                Spacer()
                Button(action: {
                    
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
    
    var imageName: String
    
    var body: some View {
        
        Image(imageName)
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .frame(width: 100, height: 100, alignment: .center)
    }
}
