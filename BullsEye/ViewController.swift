//
//  ViewController.swift
//  BullsEye
//
//  Created by Tanaka Mawoyo on 04.04.23.
//

import UIKit

class ViewController: UIViewController {
    
    var currentValue: Int = 20
    
    @IBOutlet var slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        currentValue = lroundf(slider.value)
    }
    
    @IBAction func showAlert(){
        let messege = "The value of the slider is : \(currentValue)"
        
        let alert = UIAlertController(title: "Hello!", message: messege, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "OK", style: .default)
        
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }

    @IBAction func SliderMoved(_ slider: UISlider){
        currentValue = lroundf(slider.value)
        //print("The value of the slider is now: \(slider.value)")
    }
    
}



