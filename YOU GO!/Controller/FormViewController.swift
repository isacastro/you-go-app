//
//  FormViewController.swift
//  YOU GO!
//
//  Created by Isabela Castro on 19/05/19.
//  Copyright © 2019 Isabela Castro. All rights reserved.
//

import UIKit

class FormViewController: UIViewController {

    
    @IBOutlet weak var userText: UITextField!
    @IBOutlet weak var userDate: UITextField!
    @IBOutlet weak var userNotes: UITextField!
    @IBOutlet weak var formView: UIView!
    
    private var datePicker: UIDatePicker?
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        datePicker = UIDatePicker()
        datePicker?.datePickerMode = .date
        datePicker?.addTarget(self, action: #selector(FormViewController.dateChanged(datePicker:)), for: .valueChanged)
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(FormViewController.viewTapped(gestureRecognizer:)))
        
        view.addGestureRecognizer(tapGesture)
        
        
        userDate.inputView = datePicker
        
        userText.delegate = self as? UITextFieldDelegate
        userDate.delegate = self as? UITextFieldDelegate
        userNotes.delegate = self as? UITextFieldDelegate
        
        self.formView.layer.cornerRadius = 40
        
        

        // Do any additional setup after loading the view.
    }
    
    @objc func viewTapped(gestureRecognizer: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    
    @objc func dateChanged(datePicker: UIDatePicker) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .none
//        let dateFormatter = DateFormatter()
//        dateFormatter.dateFormat = "mm/dd/yyyy"
       userDate.text = dateFormatter.string(from: datePicker.date)
       //view.endEditing(true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    func alertView(title: String, message: String, buttonText: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let restartAction = UIAlertAction(title: buttonText, style: .default, handler: nil)
        alert.addAction(restartAction)
        present(alert, animated: true, completion: nil)

    }
    
    @IBAction func onRegister(_ sender: Any) {
        if(userText.text == nil) {
            alertView(title: "Oops!", message: "Don't forget to fill your success", buttonText: "OK!")
            return
        }
        if(userText.text! == "") {
            alertView(title: "Oops!", message: "Don't forget to fill your success", buttonText: "OK!")
            return
        }
        
        if(userDate.text == nil) {
            alertView(title: "Oops!", message: "Don't forget to fill your date", buttonText: "OK!")
            return
        }
        if(userDate.text! == "") {
            alertView(title: "Oops!", message: "Don't forget to fill your date", buttonText: "OK!")
            return
        }

        var notes = userNotes.text
        if(notes == nil) {
            notes = ""
        }
        
        Model.instance.addSuccess(text: userText.text!, date: userDate.text!, notes: notes!)
        
        let alert = UIAlertController(title: "Well Done!", message: "You just registered a new success, doesn't it feel nice?", preferredStyle: .alert)
        let restartAction = UIAlertAction(title: "OK!", style: .default, handler: {action in
                self.navigationController?.popViewController(animated: true)
            }
        )
        alert.addAction(restartAction)
        present(alert, animated: true, completion: nil)
        
    }
}

extension ViewController : UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) ->Bool {
        textField.resignFirstResponder()
        return true
    }
}
