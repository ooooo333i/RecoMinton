//
//  PointsCounter.swift
//  RecoMintonWatch Watch App
//
//  Created by ooooo333i on 7/15/24.
//

import SwiftUI

struct PointsCounter: View {
    
//    @Environment(\.scenePhase) private var scenePhase
    
    @State private var Ascore : Int = 0
    @State private var Bscore : Int = 0
//    var scorelist : [heesuiloveyou]
    var body: some View {
        HStack{
            Stepper(value: $Bscore, in: 0...25) {
                Text("\(Bscore)")
            }
        }
        Spacer()
        HStack{
            Button("new") {
                Bscore = 0
                Ascore = 0
            }
            VStack{
                Text(" vs")
                    .font(.system(size: 20))
            }
            .font(.system(size: 30))
            Button("undo") {
            }
        }
        Spacer()
        HStack{
            Stepper(value: $Ascore, in: 0...25) {
                Text("\(Ascore)")
            }
//            Button("undo") {
//                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
//            }
//            Button("up"){
//                
//            }
//            Button("change"){
//                
//            }
        }
        Spacer()
    }
}

#Preview {
    PointsCounter()
}
