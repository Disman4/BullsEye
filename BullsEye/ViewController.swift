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
    var round = 0
    
    
    @IBOutlet var slider: UISlider!
    @IBOutlet var targetLabel: UILabel!
    @IBOutlet var scoreLabel: UILabel!
    @IBOutlet var roundLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startNeWgame()
    }
    
    
    func startNewRound(){
        round += 1
        targetValue = Int.random(in: 1...100)
        currentValue = 50
        slider.value = Float(currentValue)
        updateLabels()
    }
    
    
    //function to update the labels (target, score, round)
    func updateLabels(){
        targetLabel.text = String(targetValue)
        scoreLabel.text = String(score)
        roundLabel.text = String(round)
    }
    
    
    
    @IBAction func showAlert(){
        
        let difference = abs(targetValue - currentValue)
        var points = 100 - difference
        
    
        let title: String
        if difference == 0 {
            title = "Perfect"
            points += 100
        }else if difference < 5{
            title = "You almost did it!"
            if difference == 1{
                points += 50
            }
        }else if difference < 10{
            title = "Pretty Good!"
        }else{
            title = "Not even close... Try Again!"
        }
        
        score += points
        
        let messege = "You scored: \(points) points!"
        
        let alert = UIAlertController(title: title, message: messege, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "OK", style: .default, handler: { _ in self.startNewRound()})
        
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        
    }

    
    @IBAction func SliderMoved(_ slider: UISlider){
        currentValue = lroundf(slider.value)
        //print("The value of the slider is now: \(slider.value)")
    }
    
    @IBAction func startNeWgame(){
        round = 0
        score = 0
        startNewRound()
    }
    
    
}



