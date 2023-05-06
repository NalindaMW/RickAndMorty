//
//  CharactersListViewViewModel.swift
//  RickAndMorty
//
//  Created by Nalinda Wickramarathna on 2023-05-06.
//

import UIKit

final class RMCharacterListViewViewModel: NSObject {
    
    func fetchCharacters() {
        RMService.shared.execute(.listOfCharactersRequest, expecting: RMGetAllCharactersResponse.self) { result in
            switch result {
            case .success(let model):
                print(String(describing: model.info.count))
            case .failure(let error):
                print(String(describing: error))
            }
        }
    }
}

extension RMCharacterListViewViewModel: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: RMCharacterCollectionViewCell.cellIdentifier, for: indexPath) as? RMCharacterCollectionViewCell else {
            fatalError("Unsupported cell")
        }
        cell.backgroundColor = .secondarySystemFill
        
        let viewModel = RMCharacterCollectionViewCellViewModel(characterName: "Nalinda",
                                                               characterStatus: .alive,
                                                               characterImageUrl: URL(string: "https://rickandmortyapi.com/api/character/avatar/1.jpeg"))
        cell.configure(with: viewModel)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let bound = UIScreen.main.bounds
        let width = (bound.width - 30)/2
        return CGSize(width: width, height: width * 1.5)
    }
}
