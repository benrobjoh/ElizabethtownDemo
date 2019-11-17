//
//  Professor.swift
//  ElizabethtownDemo
//
//  Created by Ben Johnson on 11/17/19.
//  Copyright © 2019 Ben Johnson. All rights reserved.
//

import Foundation

/// Represents a professor
struct Professor: Codable, Identifiable {
    /// The unique ID
    let id: Int
    /// The name
    let name: String
    /// The job title
    let title: String
    /// Name of the image
    let photo: String
}
