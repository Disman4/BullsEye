//
//  ViewController.swift
//  BullsEye
//
//  Created by Tanaka Mawoyo on 04.04.23.
//

import UIKit

class ViewController: UIViewController {
    
    var currentValue: Int = 20
    var targetValue = 0
    var score = 0
    
    
    @IBOutlet var slider: UISlider!
    @IBOutlet var targetLabel: UILabel!
    @IBOutlet var scoreLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startNewRound()
    }
    
    
    func startNewRound(){
        targetValue = Int.random(in: 1...100)
        currentValue = 50
        slider.value = Float(currentValue)
        updateLabels()
    }
    
    
    //function to update the labels (target, score, round)
    func updateLabels(){
        targetLabel.text = String(targetValue)
        scoreLabel.text = String(score)
    }
    
    
    @IBAction func showAlert(){
        
        let difference = abs(targetValue - currentValue)
        let points = 100 - difference
        
        score += points
        
        let messege = "You scored: \(points) points!"
        
        let alert = UIAlertController(title: "Hello!", message: messege, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "OK", style: .default)
        
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        
        startNewRound()
    }

    
    @IBAction func SliderMoved(_ slider: UISlider){
        currentValue = lroundf(slider.value)
        //print("The value of the slider is now: \(slider.value)")
    }
    
}



