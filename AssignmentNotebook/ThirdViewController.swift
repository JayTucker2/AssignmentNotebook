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
    let alert = UIAlertController(title: "Error", message: "Enter a variable", preferredStyle: .alert)
    let okAction = UIAlertAction(title: "ok", style: .default, handler: nil)

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func button(_ sender: Any) {
        alert.addAction(okAction)

        if textField1.text! == ""
        {
            present(alert, animated: true, completion: nil)
        }
        else if textField2.text == ""{
            present(alert, animated: true, completion: nil)
        }
        else if textField3.text == ""{
            present(alert, animated: true, completion: nil)
        }
        VariableThing.className = textField1.text!
        VariableThing.assignmentName = textField2.text!
        VariableThing.date = textField3.text!
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
