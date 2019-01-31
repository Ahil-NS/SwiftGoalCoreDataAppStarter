//
//  CreateGoalVC.swift
//  SwiftGoalCoreDataAppStarter
//
//  Created by MacBook on 1/31/19.
//  Copyright © 2019 Ahil. All rights reserved.
//

import UIKit

class CreateGoalVC: UIViewController, UITextViewDelegate {
    
    @IBOutlet weak var goalTextView: UITextView!
    @IBOutlet weak var shortTermButton: UIButton!
    @IBOutlet weak var longTermButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    
    private var goalType: GoalType = .shortTerm {
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
        
        goalTextView.delegate = self
        
    }
    
    @IBAction func shortTermButtonTapped(_ sender: Any) {
        goalType = .shortTerm
    }
    @IBAction func longTermButtonTapped(_ sender: Any) {
        goalType = .longTerm
    }
    @IBAction func nextButtonTapped(_ sender: Any) {
        if goalTextView.text != "" && goalTextView.text != "What is you Goal?" {
            guard let finishGoalVC = storyboard?.instantiateViewController(withIdentifier: "FinishGoalVC") as? FinishGoalVC else { return }
            finishGoalVC.initData(description: goalTextView.text!, type: goalType)
            presentingViewController?.presentSecondaryDetail(finishGoalVC)
        }
    }
    
    @IBAction func backButtonTapped(_ sender: Any) {
        dismissDetail()
    }
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        goalTextView.text = ""
        goalTextView.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    }
    
    
}
