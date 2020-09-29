//
//  CustomTabBarController.swift
//  Kenakata
//
//  Created by Md Sifat on 28/9/20.
//  Copyright © 2020 Md Sifat. All rights reserved.
//

import UIKit

class CustomTabBarController: UITabBarController, UITabBarControllerDelegate {
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        super.delegate = self
        setupMiddleButton()
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    // TabBarButton – Setup Middle Button
    func setupMiddleButton() {

         let menuButton = UIButton(frame: CGRect(x: 0, y: 0, width: 64, height: 64))
               var menuButtonFrame = menuButton.frame
               menuButtonFrame.origin.y = view.bounds.height - menuButtonFrame.height - 40
               menuButtonFrame.origin.x = view.bounds.width/2 - menuButtonFrame.size.width/2
               menuButton.frame = menuButtonFrame

        menuButton.backgroundColor = UIColor.init(named: "menuBtnColor")
               menuButton.layer.cornerRadius = menuButtonFrame.height/2
               view.addSubview(menuButton)

               menuButton.setImage(UIImage(named: "menu"), for: .normal)
        
      
        menuButton.addTarget(self, action: #selector(self.menuButtonAction), for: .touchUpInside)

        self.view.layoutIfNeeded()
    }

    // Menu Button Touch Action
    @objc func menuButtonAction(sender: UIButton) {
        self.selectedIndex = 1  //to select the middle tab. use "1" if you have only 3 tabs.
    }

}
