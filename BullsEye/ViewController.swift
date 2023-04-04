//
//  ViewController.swift
//  BullsEye
//
//  Created by Tanaka Mawoyo on 04.04.23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showAlert(){
        let alert = UIAlertController(title: "HELLO BITCH!", message: "you are worth more than you know!", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Awesome", style: .default)
        
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }

}



