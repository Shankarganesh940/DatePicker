//
//  ViewController.swift
//  datepicker
//
//  Created by Greeens5 on 12/05/19.
//  Copyright © 2019 Book. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    

    @IBOutlet weak var text: UITextField!
    let datepicker = UIDatePicker()

    override func viewDidLoad() {
        createdatepicker()
    }
 func createdatepicker()
 {
    
    datepicker.datePickerMode = .date
    
    text.inputView = datepicker
    
    let toolbar = UIToolbar()
    toolbar.sizeToFit()
    
    let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(doneclicked))
    toolbar.setItems([doneButton], animated: true)
    
    text.inputAccessoryView = toolbar
    }
    @objc func doneclicked()
    {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .none
        
        text.text = dateFormatter.string(from: datepicker.date)
        self.view.endEditing(true)
        
    }

}

