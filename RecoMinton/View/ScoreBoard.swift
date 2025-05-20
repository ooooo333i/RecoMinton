//
//  ScoreBoard.swift
//  RecoMinton
//
//  Created by ooooo333i on 7/9/24.
//

import SwiftUI

struct ScoreBoard: View {
    @Environment(GameDATA.self) var gamedata
    var game : GAME
    
    var gameindex : Int{
        gamedata.games.firstIndex(where : {$0.id == game.id})!
    }
    
    var body: some View {
        @Bindable var gameData = gamedata
        
        VStack{
            HStack{
                VStack{
                    Text(game.players.A1)
                    Text(game.players.A2)
                }
                .font(.caption)
                Spacer()
                HStack{
                    Text("\(game.score.A)")
                        .foregroundColor(Color(red: 0.0, green: 0.0, blue: 1.0, opacity: 0.8))
                    Text(":")
                        .padding(.bottom, 8)
                    Text("\(game.score.B)")
                        .foregroundColor(Color(red: 1.0, green: 0.0, blue: 0.0, opacity: 0.8))
                        
                }
                .font(.system(size:40))
                .font(.largeTitle)
                .bold()
                Spacer()
                VStack{
                    Text(game.players.B1)
                    Text(game.players.B2)
                }
                .font(.caption)
            }
            
            .padding(20)

        }
        Divider()
        Spacer()
        
    }
}

#Preview {
    let gameData = GameDATA()
    return ScoreBoard(game : gameData.games[0])
        .environment(gameData)
    
}
