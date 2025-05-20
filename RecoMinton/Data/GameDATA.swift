//
//  GameDATA.swift
//  RecoMinton
//
//  Created by ooooo333i on 7/9/24.
//

import Foundation

@Observable
class GameDATA{
    var games : [GAME] = load("GameData.json")
    var profile = Profile.default
}


func load < T: Codable>(_ filename:String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else{
        fatalError("Couldn't load \(filename) from main bundle.")
    }
    
    do{
        data = try Data(contentsOf: file)
    }catch{
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
    
    do{
        let decorder = JSONDecoder()
        return try decorder.decode(T.self, from: data)
    }catch{
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
