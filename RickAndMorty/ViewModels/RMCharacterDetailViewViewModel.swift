//
//  RMCharacterDetailViewViewModel.swift
//  RickAndMorty
//
//  Created by Nalinda Wickramarathna on 2023-05-14.
//

import Foundation

final class RMCharacterDetailViewViewModel {
    
    private let character: RMCharacter
    
    init(character: RMCharacter) {
        self.character = character
    }
    
    public var title: String {
        return self.character.name.uppercased()
    }
    
}
