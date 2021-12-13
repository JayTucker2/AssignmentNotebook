//
//  ThirdViewController.swift
//  AssignmentNotebook
//
//  Created by JAYLAN TUCKER on 11/30/21.
//

import UIKit

class ThirdViewController: UIViewController {
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var textField3: UITextField!
    let alert = UIAlertController(title: "Error", message: "You are missing something", preferredStyle: .alert)
    let okAction = UIAlertAction(title: "ok", style: .default, handler: nil)

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func button(_ sender: Any) {
        alert.addAction(okAction)
        if textField1.text! == "" || textField2.text! == "" || textField3.text == ""{
            present(alert, animated: true, completion: nil)
        }
        else{
        VariableThing.className = textField1.text!
        VariableThing.assignmentName = textField2.text!
        VariableThing.date = textField3.text!
            var a = AssigbnmentClass(className: VariableThing.className, assignment: VariableThing.assignmentName, dueDate: VariableThing.date, isDone: false)
            VariableThing.assignmentsList.append(a)
            print("\(VariableThing.assignmentsList[0].className)")
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
