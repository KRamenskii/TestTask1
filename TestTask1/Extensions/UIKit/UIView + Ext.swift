//
//  UIView + Ext.swift
//  TestTask1
//
//  Created by Кирилл Раменский on 19.10.2022.
//

import UIKit

extension UIView {
    
    func addView(_ view: UIView) {
        self.addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
    }
}
