//
//  DetailView.swift
//  Scrumdinger
//
//  Created by Jose Muñoz on 08-02-23.
//

import SwiftUI

struct DetailView: View {
    let scrum: DailyScrum
    
    @State private var isPresentingEditView = false
    
    var body: some View {
        List {
            Section(header: Text("Información de la reunión")) {
                NavigationLink(destination: MeetingView()) {
                                  Label("Iniciar Reunion", systemImage: "timer")
                                      .font(.headline)
                                      .foregroundColor(.accentColor)
                              }
                HStack{
                    Label("Duración",systemImage: "clock")
                    Spacer()
                    Text("\(scrum.lengthMinutes) Minutos")
                }
                .accessibilityElement(children: .combine)
                HStack{
                    Label("Equipo",systemImage: "paintpalette")
                    Spacer()
                    Text(scrum.theme.name).padding(4).foregroundColor(scrum.theme.mainColor).background(scrum.theme.mainColor).cornerRadius(4)
                }
                .accessibilityElement(children: .combine)
            }
            Section(header: Text("Asistentes")) {
                ForEach(scrum.attendees) { attendee in
                    Label(attendee.neme, systemImage: "person")
                }
                
            }
        }
        .navigationTitle(scrum.title).toolbar {
            Button("Editar") {
                isPresentingEditView = true
            }
         }
        .sheet(isPresented: $isPresentingEditView) {
            NavigationView {
                DetailEditView().navigationTitle(scrum.title).toolbar {
                    ToolbarItem(placement: .cancellationAction) {
                        Button("Cancelar") {
                            isPresentingEditView = false
                        }
                    }
                }
            }
        }
    }
}


struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            DetailView(scrum: DailyScrum.sampleData[0])
       }
    }
}
