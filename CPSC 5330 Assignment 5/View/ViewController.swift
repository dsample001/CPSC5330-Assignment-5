//
//  ViewController.swift
//  CPSC 5330 Assignment 5
//
//  Created by user273384 on 2/15/25.
//

import UIKit

class ViewController: UIViewController {

    // IBOutlets
    @IBOutlet weak var background: UIImageView!
    @IBOutlet weak var questLabel: UILabel!
    @IBOutlet weak var buttonOne: UIButton!
    @IBOutlet weak var buttonTwo: UIButton!
    
    // variables
    var questlogic = QuestLogic()
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func questOne(_ sender: UIButton) {
        // Set new index
        questlogic.newIndexOne()
        
        // Wait 0.1 seconds and updateUI
        Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
    @IBAction func questTwo(_ sender: UIButton) {
        // Set new index
        questlogic.newIndexTwo()
        
        // Wait 0.1 seconds and updateUI
        Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
    // Update UI
    @objc func updateUI() {
        
        // Set background
        background.image = UIImage(named: String(questlogic.getImageName()))
        
        // Set quest label
        questLabel.text = questlogic.getNextQuest()
        
        // Set button text
        buttonOne.setTitle(questlogic.getChoiceOne(), for: .normal)
        buttonTwo.setTitle(questlogic.getChoiceTwo(), for: .normal)
        
        // Enable/Disabel buttons
        // If text is "" disable button, or leave as is...
        //If they click the button with no text it still starts the quest over.
        
    }
}

