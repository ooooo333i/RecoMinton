//
//  AddGame.swift
//  RecoMinton
//
//  Created by ooooo333i on 7/11/24.
//

import SwiftUI

struct AddGame: View {
    
    @State private var Ascore : Int = 25
    @State private var Bscore : Int = 25
    
    var body: some View {
        HStack{
            GroupBox() {
                Text("My name")
                Text("Player1")
            }
            .frame(width: 120.0, height: 90.0)
            
            
            GroupBox() {
                Text("Player2")
                Text("Player3")
            }
            .frame(width: 120.0, height: 90.0)
        }
        Divider()
        HStack{
            Text("\(Ascore)")
            Text(":")
                .padding(.bottom, 8)
            Text("\(Bscore)")
        }
        .font(.system(size:60))
        HStack{
            Stepper(value: $Ascore, in: 0...35) {
            }
            .frame(width: 100.0)
            Stepper(value: $Bscore, in: 0...35) {
            }
            .frame(width: 100.0)
        }
        
        Spacer()
    }
}

#Preview {
    AddGame()
}
