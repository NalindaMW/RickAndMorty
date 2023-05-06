//
//  UIView+Extensions.swift
//  RickAndMorty
//
//  Created by Nalinda Wickramarathna on 2023-05-06.
//

import UIKit

extension UIView {
    func addSubViews(_ views: UIView...) {
        views.forEach({
            addSubview($0)
        })
    }
}
