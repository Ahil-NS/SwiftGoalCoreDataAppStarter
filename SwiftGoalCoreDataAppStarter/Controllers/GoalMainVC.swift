//
//  ViewController.swift
//  SwiftGoalCoreDataAppStarter
//
//  Created by MacBook on 1/29/19.
//  Copyright © 2019 Ahil. All rights reserved.
//

import UIKit

class GoalMainVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}

extension GoalMainVC: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "goalCell", for: indexPath) as? GoalCell else{return UITableViewCell()}
        cell.configureCell(description: "Eat healty", type: .longTerm, progressCount: 5)
        return cell
    }
    
    
}
