//
//  SucessoViewController.swift
//  YOU GO!
//
//  Created by Isabela Castro on 19/05/19.
//  Copyright © 2019 Isabela Castro. All rights reserved.
//

import UIKit

class SucessoViewController: UIViewController {

    @IBOutlet var successDate: UITextField!
    @IBOutlet var successText: UITextField!
    @IBOutlet var successNotes: UITextField!
    @IBOutlet weak var sucessoView: UIView!
    
    var sucess : Sucesso?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        if(sucess == nil) {
            return
        }
        
        self.sucessoView.layer.cornerRadius = 40
        
        successDate.text = sucess!.date
        successText.text = sucess!.success
        successNotes.text = sucess!.notes
    }
    
    func setInfo(sucesso: Sucesso){
        sucess = sucesso
    }
}
