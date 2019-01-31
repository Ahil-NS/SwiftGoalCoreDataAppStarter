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
    
    
    func configureCell(description: String, type: GoalType, progressCount: Int){
        descriptionLabel.text = description
        typeLabel.text = type.rawValue
        progressLabel.text = String(describing: progressCount)
        
    }
  

}
