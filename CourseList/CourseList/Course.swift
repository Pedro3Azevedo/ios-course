//
//  Course.swift
//  CourseList
//
//  Created by pedro azevedo on 08/01/2026.
//

import Foundation

struct Course : Identifiable, Codable{
    var id: Int
    var image: String
    var title: String
    var subtitle: String
}
