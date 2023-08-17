//
//  Task.swift
//  GlowHigh
//
//  Created by scholar on 8/17/23.
//


import SwiftUI

// task model and sample tasks...
 
//array of tasks:
struct Task: Identifiable {
    var id = UUID().uuidString
    var title: String
    var time: Date = Date()
}

// total task meta view:
struct TaskMetaData: Identifiable {
    var id = UUID().uuidString
    var task: [Task]
    var taskDate: Date
}

// sample date for testing...
func getSampleDate(offset: Int) -> Date {
//    let calendar  Calendar.current
    let date = Calendar.current.date(byAdding: .day, value: offset, to: Date())
    return date ?? Date()
}

// sample tasks
var tasks: [TaskMetaData] = [

    TaskMetaData(task: [
        Task(title: "Meditate for an hour")
    ], taskDate: getSampleDate(offset: 1)),
    TaskMetaData(task: [
        Task(title: "Go for a run!")
    ], taskDate: getSampleDate(offset: -8)),
    TaskMetaData(task: [
        Task(title: "Do 20 pushups"),
        Task(title: "Face Mask")
    ], taskDate: getSampleDate(offset: 10)),
    TaskMetaData(task: [
        Task(title: "Sugar scrub!")
    ], taskDate: getSampleDate(offset: -3)),
    TaskMetaData(task: [
        Task(title: "Sleep early!")
    ], taskDate: getSampleDate(offset: 5)),
    TaskMetaData(task: [
        Task(title: "Respond to email!")
    ], taskDate: getSampleDate(offset: -13)),
    TaskMetaData(task: [
        Task(title: "Submit project")
    ], taskDate: getSampleDate(offset: 3)),
]
