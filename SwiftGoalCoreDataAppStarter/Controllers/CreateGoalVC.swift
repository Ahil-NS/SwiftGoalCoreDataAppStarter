//
//  CreateGoalVC.swift
//  SwiftGoalCoreDataAppStarter
//
//  Created by MacBook on 1/31/19.
//  Copyright © 2019 Ahil. All rights reserved.
//

import UIKit

class CreateGoalVC: UIViewController {
    
    @IBOutlet weak var goalTextView: UITextView!
    @IBOutlet weak var shortTermButton: UIButton!
    @IBOutlet weak var longTermButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    
    private var goalType: GoalType = .longTerm {
        didSet {
            if(goalType == .longTerm){
                longTermButton.setSelectedColor()
                shortTermButton.setDeselectedColor()
            }
            else{
                shortTermButton.setSelectedColor()
                longTermButton.setDeselectedColor()
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nextButton.bindToKeyboard()
        
        shortTermButton.setSelectedColor()
        longTermButton.setDeselectedColor()
        
    }
    
    @IBAction func shortTermButtonTapped(_ sender: Any) {
        goalType = .shortTerm
    }
    @IBAction func longTermButtonTapped(_ sender: Any) {
        goalType = .longTerm
    }
    @IBAction func nextButtonTapped(_ sender: Any) {
        
    }
    
    @IBAction func backButtonTapped(_ sender: Any) {
        dismissDetail()
    }
    
}
