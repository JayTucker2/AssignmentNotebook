//
//  ViewController.swift
//  AssignmentNotebook
//
//  Created by JAYLAN TUCKER on 11/30/21.
//  Edited by BRENT BLITEK
//
//Edited by JAYLAN TUCKER
class VariableThing : Codable{
    static var className = ""
    static var assignmentName = ""
    static var date = ""
    static var assignmentsList : [AssigbnmentClass] = []
    
}

import UIKit
var test = 0
class ViewController: UIViewController {
    @IBOutlet weak var userNameTextfield: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        nameLabel.isHidden = true
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func Button(_ sender: Any) {
        nameLabel.isHidden = false
        nameLabel.text = userNameTextfield.text
    }
    //This is yo mom

}

