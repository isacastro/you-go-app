//
//  ViewController.swift
//  YOU GO!
//
//  Created by Isabela Castro on 18/05/19.
//  Copyright © 2019 Isabela Castro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var seeAll: UIButton!
    @IBOutlet weak var new: UIButton!
    @IBOutlet weak var buttonsView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Criando cantos arredondados
        self.seeAll.layer.cornerRadius = 20
        self.new.layer.cornerRadius = 20
        self.buttonsView.layer.cornerRadius = 40

        
        // Do any additional setup after loading the view.
    }


}

