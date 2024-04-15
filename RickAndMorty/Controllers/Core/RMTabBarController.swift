//
//  ViewController.swift
//  RickAndMorty
//
//  Created by Nalinda Wickramarathna on 2023-04-30.
//

import UIKit

/// Controller to house tabs and root tab controllers 
final class RMTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTabViewControllers()
    }

    private func setupTabViewControllers() {
        let characterVC = RMCharacterViewController()
        let locationVC = RMLocationViewController()
        let episodeVC = RMEpisodeViewController()
        let settingsVC = RMSettingsViewController()
        
        characterVC.navigationItem.largeTitleDisplayMode = .automatic
        locationVC.navigationItem.largeTitleDisplayMode = .automatic
        episodeVC.navigationItem.largeTitleDisplayMode = .automatic
        settingsVC.navigationItem.largeTitleDisplayMode = .automatic
        
        let navCharacterVC = UINavigationController(rootViewController: characterVC)
        let navLocationVC = UINavigationController(rootViewController: locationVC)
        let navEpisodeVC = UINavigationController(rootViewController: episodeVC)
        let navSettingsVC = UINavigationController(rootViewController: settingsVC)
        
        navCharacterVC.tabBarItem = UITabBarItem(title: "Characters",
                                                 image: UIImage(systemName: "person"),
                                                 tag: 1)
        navLocationVC.tabBarItem = UITabBarItem(title: "Locations",
                                                image: UIImage(systemName: "globe"),
                                                tag: 2)
        navEpisodeVC.tabBarItem = UITabBarItem(title: "Episodes",
                                               image: UIImage(systemName: "tv"),
                                               tag: 3)
        navSettingsVC.tabBarItem = UITabBarItem(title: "Settings",
                                                image: UIImage(systemName: "gear"),
                                                tag: 4)
        
        for navVC in [navCharacterVC, navLocationVC, navEpisodeVC, navSettingsVC] {
            navVC.navigationBar.prefersLargeTitles = true
        }
        
        setViewControllers(
            [navCharacterVC, navLocationVC, navEpisodeVC, navSettingsVC],
            animated: true
        )
    }

}

