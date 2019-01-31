//
//  FinishGoalVC.swift
//  SwiftGoalCoreDataAppStarter
//
//  Created by MacBook on 2/1/19.
//  Copyright © 2019 Ahil. All rights reserved.
//

import UIKit

let appDelegate = UIApplication.shared.delegate as? AppDelegate

class FinishGoalVC: UIViewController, UITextFieldDelegate {

    private var goalDescription: String?
    private var goalType: GoalType?
    
    @IBOutlet weak var finishGoalButton: UIButton!
    @IBOutlet weak var pointsTextField: UITextField!
    
    func initData(description: String, type: GoalType) {
        self.goalDescription = description
        self.goalType = type
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        finishGoalButton.bindToKeyboard()
        pointsTextField.delegate = self
    }
    @IBAction func finishButtonTapped(_ sender: Any) {
        if pointsTextField.text != "" {
            self.save { (complete) in
                if complete {
                    dismiss(animated: true, completion: nil)
                }
            }
        }
    }
    
    @IBAction func backButtonTapped(_ sender: Any) {
        dismissDetail()
    }
    
    func save(completion: (_ finished: Bool) -> ()) {
        guard let managedContext = appDelegate?.persistentContainer.viewContext else { return }
        
        guard let points = pointsTextField.text else{return}
        let goal = Goal(context: managedContext)
        
        goal.goalDescription = goalDescription
        goal.goalType = goalType!.rawValue
        goal.goalCompleteValue = Int32(points)!
        goal.goalProgress = Int32(0)
        
        do {
            try managedContext.save()
            print("Successfully saved data.")
            completion(true)
        } catch {
            debugPrint("Could not save: \(error.localizedDescription)")
            completion(false)
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        pointsTextField.resignFirstResponder()
    }
    

}
