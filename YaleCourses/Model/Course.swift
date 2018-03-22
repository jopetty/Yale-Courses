//
//  Course.swift
//  YaleCourses
//
//  Created by Jackson Petty on 3/2/18.
//  Copyright © 2018 Jackson Petty. All rights reserved.
//

import Foundation

struct Course {
	
	// MARK: - Properties
	
	var title: String
	var number: String
	var instructors: [Instructor]
	var description: String
	var meetingPattern: String
	var finalExam: String
	var department: [String]
	var sectionNumber: String
	var designations: [String]
	
	// MARK: - Init
	
	init?(from json: [String: Any]) {
		guard let title = json["courseTtile"] as? String,
			  let number = json["courseNumber"] as? String,
			  let instructors = json["instructorList"] as? [String],
			  let description = json["description"] as? String,
			  let meetingPattern = json["meetingPattern"] as? String,
			  let finalExam = json["finalExam"] as? String,
			  let department = json["department"] as? [String],
			  let sectionNumber = json["sectionNumber"] as? String,
			  let designations = json["distDesg"] as? [String]
		else {
			return nil
		}
		
		self.title = title
		self.number = number
		self.instructors = instructors.map( { (name) -> Instructor in
			return Instructor(name)
		} )
		self.description = description
		self.meetingPattern = meetingPattern
		self.finalExam = finalExam
		self.department = department
		self.sectionNumber = sectionNumber
		self.designations = designations
		
	}
}
