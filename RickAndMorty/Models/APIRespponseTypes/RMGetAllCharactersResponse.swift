//
//  RMGetAllCharactersResponse.swift
//  RickAndMorty
//
//  Created by Nalinda Wickramarathna on 2023-05-06.
//

import Foundation

struct RMGetAllCharactersResponse: Codable {
    struct Info: Codable {
        let count: Int
        let pages: Int
        let next: String?
        let prev: String?
    }
    
    let info: Info
    let results: [RMCharacter]
}
