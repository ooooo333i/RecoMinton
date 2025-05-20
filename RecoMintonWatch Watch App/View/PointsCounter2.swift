//
//  PointsCounter2.swift
//  RecoMintonWatch Watch App
//
//  Created by ooooo333i on 8/30/24.
//

import SwiftUI

struct PointsCounter2: View {
    @State private var Score_List : [Character] = []
    
    var body: some View {
        
        VStack{
            Button("\(Score_List.filter{ $0 == "b" }.count)") {
                Score_List.append("b")
                if (Score_List.filter{ $0 == "b" }.count)>=25 && (Score_List.filter{ $0 == "b" }.count) > (Score_List.filter{ $0 == "a" }.count)+1
                {
                    print("Gameset")
                    print(Score_List)
                }
            }
            .background(.red, in: Capsule())
            .padding(.horizontal, 60.0)
            .fontDesign(.rounded)
            .bold()
            Spacer()
            HStack{
                Button{
                    Score_List.removeAll()
                }label : {
                    Label("", systemImage: "chevron.backward.2")
                }
                .frame(width: 40.0, height: 40.0)
                Text(" vs")
                Button{
                    if Score_List.count != 0 {
                        Score_List.removeLast()
                    }
                }label : {
                    Label("", systemImage: "chevron.backward")
                }
                .frame(width: 40.0, height: 40.0)
            }
            Spacer()
            Button("\(Score_List.filter{ $0 == "a" }.count)") {
                Score_List.append("a")
                if (Score_List.filter{ $0 == "a" }.count)>=25 && (Score_List.filter{ $0 == "a" }.count) > (Score_List.filter{ $0 == "b" }.count)+1
                {
                    print("Gameset")
                    print(Score_List)
                }
            }
            .background(.blue, in: Capsule())
            .padding(.horizontal, 60.0)
            .fontDesign(.rounded)
            .controlSize(.mini)
            .bold()
        }
    }
}

#Preview {
    PointsCounter2()
}
