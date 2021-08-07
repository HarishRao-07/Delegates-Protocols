//
//  SecondViewController.swift
//  Backward Using Delegates&Protocol
//
//  Created by rd on 06/07/21.
//  Copyright © 2021 vishnu. All rights reserved.
//

import UIKit

protocol CanRecieve {
    func DataReceived(dataPassedBackward:String)
}



class SecondViewController: UIViewController {
    
    var dataPassedForward = ""
    
    var delegate : CanRecieve?
    
    @IBOutlet weak var Label2: UILabel!
    @IBOutlet weak var textField2: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

       Label2.text = dataPassedForward
    }
    
    @IBAction func buttonTappedSVC(_ sender: Any) {
        delegate?.DataReceived(dataPassedBackward: textField2.text!)
        dismiss(animated: true, completion: nil)

    }
    
}
