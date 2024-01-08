//
//  UIView+extensions.swift
//  WeatherApp
//
//  Created by Lucas Newlands on 08/01/24.
//

import Foundation
import UIKit

extension UIView {
    func setConstraintsToParent(_ parent: UIView) {
        NSLayoutConstraint.activate([
            self.topAnchor.constraint(equalTo: parent.topAnchor),
            self.trailingAnchor.constraint(equalTo: parent.trailingAnchor),
            self.bottomAnchor.constraint(equalTo: parent.bottomAnchor),
            self.leadingAnchor.constraint(equalTo: parent.leadingAnchor)
        ])
    }
}
