//
//  SucessoCell.swift
//  YOU GO!
//
//  Created by Isabela Castro on 19/05/19.
//  Copyright © 2019 Isabela Castro. All rights reserved.
//

import UIKit

class SucessoCell: UITableViewCell {

    @IBOutlet var textCell: UITextField!
    @IBOutlet var dateCell: UITextField!
    
    func setInfo(success: Sucesso){
        textCell.text = success.success
        dateCell.text = success.date
        
    }
}
