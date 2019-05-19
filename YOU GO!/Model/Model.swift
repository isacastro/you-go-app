//
//  Model.swift
//  YOU GO!
//
//  Created by Isabela Castro on 19/05/19.
//  Copyright © 2019 Isabela Castro. All rights reserved.
//

import Foundation
import UIKit

class Model{
    static let instance = Model()
    
    var sucessos : [Sucesso] = []
    
    func addSuccess(text: String, date: String, notes: String) {
        let succ = Sucesso(success: text, date: date, notes: notes)
        sucessos.append(succ)
    }
}
