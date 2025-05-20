//
//  DATA.swift
//  RecoMinton
//
//  Created by ooooo333i on 7/9/24.
//
import Foundation

struct GAME: Codable {
    var id: Int
    var players: Players
    var score: Score
    var winnerTeam: Bool
    
    enum CodingKeys: String, CodingKey {
        case id
        case players = "playes"
        case score = "Score"
        case winnerTeam = "WinnerTeam"//true = Ateam win / false Bteam win
    }
}

struct Players: Codable {
    var A1: String
    var A2: String
    var B1: String
    var B2: String
}

struct Score: Codable {
    var A: Int
    var B: Int
}
