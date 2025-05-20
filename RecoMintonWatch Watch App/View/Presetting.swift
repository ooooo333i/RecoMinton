//
//  Presetting.swift
//  RecoMintonWatch Watch App
//
//  Created by ooooo333i on 7/25/24.
//

import SwiftUI

struct Presetting: View {
    var body: some View {
        
        Picker(selection:.constant(1), label: Text("GameType")) {
            Text("Single").tag(1)
            Text("Double").tag(2)
        }
        .pickerStyle(.navigationLink)
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    Presetting()
}
