//
//  FinishGoalVC.swift
//  SwiftGoalCoreDataAppStarter
//
//  Created by MacBook on 2/1/19.
//  Copyright © 2019 Ahil. All rights reserved.
//

import UIKit

class FinishGoalVC: UIViewController {

    
    var goalDescription: String?
    var goalType: GoalType?
    @IBOutlet weak var finishGoalButton: UIButton!
    @IBOutlet weak var pointsTextField: UITextField!
    
    func initData(description: String, type: GoalType) {
        self.goalDescription = description
        self.goalType = type
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func finishButtonTapped(_ sender: Any) {
        
    }
    
    @IBAction func backButtonTapped(_ sender: Any) {
        dismissDetail()
    }
    
}
