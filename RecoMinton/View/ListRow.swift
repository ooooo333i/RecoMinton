//
//  ListRow.swift
//  RecoMinton
//
//  Created by ooooo333i on 7/9/24.
//

import SwiftUI

struct ListRow: View {
    var game : GAME
    
    var body: some View {
        HStack{
            VStack{
                Text(game.players.A1)
                Text(game.players.A2)
            }
            HStack{
                Text("\(game.score.A)")
                Text(":")
                    .padding(.bottom, 7.0)
                Text("\(game.score.B)")
            }
            .font(.system(size: 40))
            VStack{
                Text(game.players.B1)
                Text(game.players.B2)
            }
        }
        Divider()
    }
}

#Preview {
    let games = GameDATA().games
    return Group{
        ListRow(game : games[0])
        ListRow(game : games[1])
    }
    
}
