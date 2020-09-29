//
//  CustomSearchTextField.swift
//  Kenakata
//
//  Created by Md Sifat on 28/9/20.
//  Copyright © 2020 Md Sifat. All rights reserved.
//

import Foundation
import UIKit

extension UITextField{
    func addLeftView(image: UIImage) {
        let imageView = UIImageView(frame: CGRect(x: 10, y: 10, width: 30, height: 30))
            imageView.image = image
            let button = UIButton(frame: imageView.frame)
            
            button.setImage(#imageLiteral(resourceName: "search"), for: .normal)
    
        leftViewMode = .always
        
    }

}
