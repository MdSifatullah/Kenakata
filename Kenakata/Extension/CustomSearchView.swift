//
//  CustomSearchView.swift
//  Kenakata
//
//  Created by Md Sifat on 28/9/20.
//  Copyright © 2020 Md Sifat. All rights reserved.
//

import UIKit

class CustomSearchView: UIView {

        override init(frame: CGRect) {
               super.init(frame: frame)
               setRadiousndShow()
           }
           
           required init?(coder aDecoder: NSCoder) {
               super.init(coder: aDecoder)
               setRadiousndShow()
           }
           
           func setRadiousndShow(){
               layer.cornerRadius = 20
               clipsToBounds = true
               layer.masksToBounds = false
               layer.shadowRadius = 5
               layer.shadowOpacity = 0.5
               layer.shadowOffset = CGSize(width: 3, height: 0)
               layer.shadowColor = #colorLiteral(red: 0.09802811593, green: 0.09804544598, blue: 0.09802222997, alpha: 1)
           }
}
