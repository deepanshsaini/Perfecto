//
//  ViewController.swift
//  Perfecto
//
//  Created by Deepansh Saini on 03/01/18.
//  Copyright © 2018 Ardhendu Shekhar Mishra. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var ContinueBtn : UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ContinueBtn.layer.cornerRadius = 6
        ContinueBtn.layer.borderColor = UIColor.black.cgColor
        ContinueBtn.layer.borderWidth = 2
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    


}

