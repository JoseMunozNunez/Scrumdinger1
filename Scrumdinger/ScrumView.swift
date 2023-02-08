//
//  ScrumView.swift
//  Scrumdinger
//
//  Created by Jose Muñoz on 08-02-23.
//

import SwiftUI

struct ScrumView: View {
    let scrums: [DailyScrum]
    
    var body: some View {
        List {
            ForEach(scrums) { scrum in
                NavigationLink(destination: DetailView(scrum: scrum)) {
                    CardView(scrum: scrum)
                }
                
            }
        }
        .navigationTitle("Scrums Diarios")
        .toolbar {
            Button(action: {}) {
                Image(systemName: "más")
            }
            .accessibilityLabel("Nuevo Scrum")
        }
    }
}

struct ScrumView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
                   ScrumsView(scrums: DailyScrum.sampleData)
               }
    }
}
