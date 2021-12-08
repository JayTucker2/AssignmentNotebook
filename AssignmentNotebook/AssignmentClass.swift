//
//  AssignmentClass.swift
//  AssignmentNotebook
//
//  Created by mateoacosta on 12/7/21.
//

import Foundation

public class AssigbnmentClass{
var className = ""
var assignmentName = ""
var dueDate = ""
var isDone = false
    
    init(className : String, assignment : String, dueDate : String, isDone : Bool)
    {
        self.className = className
        self.assignmentName = assignment
        self.dueDate = dueDate
        self.isDone = isDone
    }
}
