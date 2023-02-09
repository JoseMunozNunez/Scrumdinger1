//
//  ContentView.swift
//  Scrumdinger
//
//  Created by Jose Muñoz on 08-02-23.
//

import SwiftUI

struct MeetingView: View {
    var body: some View {
        VStack {
            ProgressView( value: 5, total: 15)
            HStack {
                VStack (alignment:  .leading) {
                    Text("Segundos Trascurridos").font(.caption)
                    Label("300", systemImage: "hourglass.bottomhalf.fill")
                }
                Spacer()
                VStack (alignment:  .trailing) {
                    Text("Segundos Restantes").font(.caption)
                    Label("600", systemImage: "hourglass.bottomhalf.fill")
                }
            }
            .accessibilityElement(children: .ignore)
            .accessibilityLabel("Time remaining")
            .accessibilityValue("10 minutes")
            
            Circle().strokeBorder(lineWidth: 24)
            HStack{
                Text("Usuario 1 de 3")
                Spacer()
                Button(action: { } )  {
                    Image(systemName: "forward.fill")
                }
                .accessibilityLabel("Next speaker")
            }
        }
        .padding()
    }
    
    struct MeetingView_Previews: PreviewProvider {
        static var previews: some View {
            MeetingView()
        }
    }
}
