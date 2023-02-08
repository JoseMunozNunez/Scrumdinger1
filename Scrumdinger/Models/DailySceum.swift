//
//  DailySceum.swift
//  Scrumdinger
//
//  Created by Jose Muñoz on 08-02-23.
//

import Foundation

struct DailyScrum {
    var title: String
    var attendees:[String]
    var lengthMinutes: Int
    var theme: Theme
}

extension DailyScrum {
    static let sampleData :[DailyScrum ] =
    [
        DailyScrum (title: "Desing", attendees: ["Cathy", "Daisy", "Simon", "Jonathan"], lengthMinutes: 10, theme: .yellow),
        DailyScrum(title: "App Dev", attendees: ["Katie", "Gray", "Euna", "Luis", "Darla"], lengthMinutes: 5, theme: .orange),
        DailyScrum(title: "Web Dev" , attendees: ["Chella", "Chris", "Christina", "Eden", "Karla", "Lindsey", "Aga", "Chad", "Jenn", "Sarah"], lengthMinutes: 5, theme: .poppy)
        
       ]        
    
}



