//
//  Assignment.swift
//  AssignmentNotebook2020
//
//  Created by  on 12/2/20.
//

import Foundation

struct Assignment: Codable
{
    var name: String
    var date: String
    
    
    init(n: String, d: String)
    {
        self.name = n
        self.date = d
    }
}
