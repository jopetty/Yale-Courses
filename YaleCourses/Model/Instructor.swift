//
//  Instructor.swift
//  YaleCourses
//
//  Created by Jackson Petty on 3/2/18.
//  Copyright © 2018 Jackson Petty. All rights reserved.
//

import Foundation

/// An instructor who teaches a course.
/// All courses have at least one instructor,
/// who may be a professor, a TF, or another faculty member.
class Instructor {
	
	// MARK: - Properties
	
	var name: String
	var department: String
	var email: String
	
	// MARK: - Public Methods
	
	init(_ name: String, department: String, email: String) {
		self.name = name
		self.department = department
		self.email = email
	}
	
	init(_ name: String) {
		self.name = ""
		self.department = ""
		self.email = ""
	}
}
