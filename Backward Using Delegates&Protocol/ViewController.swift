//
//  ViewController.swift
//  Backward Using Delegates&Protocol
//
//  Created by rd on 06/07/21.
//  Copyright © 2021 vishnu. All rights reserved.
//

import UIKit

class ViewController: UIViewController , CanRecieve{
    

    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var textField1: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    
    @IBAction func buttonTappedFVC(_ sender: Any) {
        
        performSegue(withIdentifier: "DataPassForward", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "DataPassForward"{
            
            let secondVC = segue.destination as! SecondViewController
            secondVC.dataPassedForward = textField1.text!
            secondVC.delegate = self
            
        }
    }
    
    func DataReceived(dataPassedBackward: String) {
        label1.text = dataPassedBackward
    }

    
}

