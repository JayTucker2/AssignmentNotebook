//
//  SecondViewController.swift
//  AssignmentNotebook
//
//  Created by JAYLAN TUCKER on 11/30/21.
//

import UIKit


class SecondViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    
    var assignments : [String] = []
    @IBOutlet weak var tableOutlet: UITableView!
    
    override func viewDidLoad() {
        assignments.append("Homework")
        tableOutlet.delegate = self
        tableOutlet.dataSource = self
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        assignments.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! notesClass
        
        return cell
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


