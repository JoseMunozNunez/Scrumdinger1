//
//  DailySceum.swift
//  Scrumdinger
//
//  Created by Jose Muñoz on 08-02-23.
//

import Foundation

struct DailyScrum: Identifiable {
    let id: UUID
    var title: String
    var attendees:[Attendee]
    var lengthMinutes: Int
    var theme: Theme
    
    init(id: UUID = UUID(), title: String, attendees: [String], lengthMinutes: Int, theme: Theme) {
        self.id = id
        self.title = title
        self.attendees = attendees.map { Attendee(neme: $0) }
        self.lengthMinutes = lengthMinutes
        self.theme = theme
    }
    
    
}

extension DailyScrum {
    struct Attendee: Identifiable{
        let id: UUID
        var neme: String
        
        init(id: UUID = UUID(), neme: String) {
            self.id = id
            self.neme = neme
        }
    }
}

extension DailyScrum {
    static let sampleData :[DailyScrum ] =
    [
        DailyScrum (title: "Diseño", attendees: ["Cathy", "Daisy", "Simon", "Jonathan"], lengthMinutes: 10, theme: .amarillo),
        DailyScrum(title: "App Dev", attendees: ["Katie", "Gray", "Euna", "Luis", "Darla"], lengthMinutes: 5, theme: .naranjo),
        DailyScrum(title: "Web Dev" , attendees: ["Chella", "Chris", "Christina", "Eden", "Karla", "Lindsey", "Aga", "Chad", "Jenn", "Sarah"], lengthMinutes: 5, theme: .amapola)
        
       ]        
    
}



