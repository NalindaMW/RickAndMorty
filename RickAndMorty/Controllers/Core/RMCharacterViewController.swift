//
//  RMCharacterViewController.swift
//  RickAndMorty
//
//  Created by Nalinda Wickramarathna on 2023-05-01.
//

import UIKit

/// Controller to show and search Characters
final class RMCharacterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        title = "Characters"
        
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
