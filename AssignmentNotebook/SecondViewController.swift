//
//  SecondViewController.swift
//  AssignmentNotebook
//
//  Created by JAYLAN TUCKER on 11/30/21.
//

import UIKit


class SecondViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    var notes: [String] = []
    

    @IBOutlet weak var tableOutlet: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableOutlet.delegate = self
        tableOutlet.dataSource = self
        notes.append("one")

        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        notes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print("cell")
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! notesClass
       cell.notesTitle.text = "Notes Title"
        cell.timeDue.text = "Time Due"
        return cell
    }
    @IBAction func addBut(_ sender: Any) {
        let now = Date()
        print(now)
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
