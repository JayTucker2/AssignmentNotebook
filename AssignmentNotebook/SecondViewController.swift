//
//  SecondViewController.swift
//  AssignmentNotebook
//
//  Created by JAYLAN TUCKER on 11/30/21.
//

import UIKit


class SecondViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    
    
    @IBOutlet weak var tableOutlet: UITableView!
    func save(){
        let encoder = JSONEncoder()
        if let encoded = try? encoder.encode(VariableThing.assignmentsList){
            UserDefaults.standard.set(encoded, forKey: "theContacts")
        }
        
    }
    override func viewDidLoad() {
        
        tableOutlet.delegate = self
        tableOutlet.dataSource = self
        if let items = UserDefaults.standard.data(forKey: "theContacts"){
            let decoder = JSONDecoder()
            if let decoded = try? decoder.decode([AssigbnmentClass].self, from: items){
                VariableThing.assignmentsList = decoded
            }
        }
    }
    override func viewWillAppear(_ animated: Bool) {
        tableOutlet.reloadData()
        save()
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(VariableThing.assignmentsList.count)
        return VariableThing.assignmentsList.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! notesClass
        cell.notesTitle.text = VariableThing.assignmentsList[indexPath.row].assignmentName
        cell.timeDue.text = VariableThing.assignmentsList[indexPath.row].dueDate
        return cell
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            VariableThing.assignmentsList.remove(at: indexPath.row)
            tableOutlet.reloadData()
            save()
    }
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "Segue1", sender: self)
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



