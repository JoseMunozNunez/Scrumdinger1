//
//  DetailEditView.swift
//  Scrumdinger
//
//  Created by Jose Muñoz on 09-02-23.
//

import SwiftUI

struct DetailEditView: View {
    @State private var data = DailyScrum.Data()
    @State private var newAttendeeName = ""
    
    
    var body: some View {
        Form {
            Section(header: Text("Información de la reunión")) {
                TextField("Titulo", text: $data.title)
                HStack{
                    Slider(value: $data.lengthMinute, in: 5...30, step: 1 ) {
                        Text("Duracion")
                    }
                    .accessibilityValue("\(Int(data.lengthMinute)) minutos")
                    Spacer()
                    Text("\(Int(data.lengthMinute)) Minutos")
                }
            }
            Section(header: Text("Asistentes")){
                ForEach(data.attendees) { attendee in Text(attendee.neme)
                }
                .onDelete { indices in
                    data.attendees.remove(atOffsets: indices)
               }
                HStack {
                    TextField("Nuevo sistente", text: $newAttendeeName)
                    Button(action: {
                        withAnimation {
                            let attendee = DailyScrum.Attendee(neme: newAttendeeName)
                            data.attendees.append(attendee)
                       }
                   }) {
                       Image(systemName: "plus.circle.fill").accessibilityLabel("Nuevo Asistente")
                    }
                   .disabled(newAttendeeName.isEmpty)
               }
            }
        }
    }
    
    struct DetailEditView_Previews: PreviewProvider {
        static var previews: some View {
            DetailEditView()
        }
    }
}
