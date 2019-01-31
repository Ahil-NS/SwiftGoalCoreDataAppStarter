//
//  GoalCell.swift
//  SwiftGoalCoreDataAppStarter
//
//  Created by MacBook on 1/31/19.
//  Copyright © 2019 Ahil. All rights reserved.
//

import UIKit

class GoalCell: UITableViewCell {
    
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var typeLabel: UILabel!
    @IBOutlet weak var progressLabel: UILabel!
    @IBOutlet weak var completionView: UIView!
    
    
    func configureCell(goal: Goal) {
        self.descriptionLabel.text = goal.goalDescription
        self.typeLabel.text = goal.goalType
        self.progressLabel.text = String(describing: goal.goalProgress)
        
        if goal.goalProgress == goal.goalCompleteValue {
            self.completionView.isHidden = false
        } else {
            self.completionView.isHidden = true
        }
        
    }
  

}
