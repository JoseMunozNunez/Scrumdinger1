//
//  CardView.swift
//  Scrumdinger
//
//  Created by Jose Muñoz on 08-02-23.
//

import SwiftUI

struct CardView: View {
    let scrum: DailyScrum
    
    var body: some View {
            VStack(alignment: .leading) {
                Text(scrum.title)
                    .font(.headline).accessibilityAddTraits(.isHeader)
                HStack {
                    Label("\(scrum.attendees.count)", systemImage: "person.3").accessibilityLabel("\(scrum.attendees.count) asistentes")
                    Spacer()
                    Label("\(scrum.lengthMinutes)", systemImage: "clock").accessibilityLabel("\(scrum.lengthMinutes) reunion de un minuto")
                        .labelStyle(.trailingIcon)
                }
                .font(.caption)
            }
            .padding()
            .foregroundColor(scrum.theme.accentColor)
        }
    }

    struct CardView_Previews: PreviewProvider {
        static var scrum = DailyScrum.sampleData[0]
        static var previews: some View {
            CardView(scrum: scrum)
                .background(scrum.theme.mainColor)
                .previewLayout(.fixed(width: 400, height: 60))
        }
    }
