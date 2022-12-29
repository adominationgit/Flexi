//
//  ContentView.swift
//  Flexi
//
//  Created by Dominic Snyder on 12/23/22.
//

import SwiftUI
import CoreData

struct ContentView: View {
    let school1 = "East Ridge High School"
    let school2 = "Inver Hills Community College"
    var body: some View {
        NavigationStack {
            VStack() {
                HStack {
                    Spacer()
                    Menu("More") {
                        NavigationLink(destination: SettingsView()) {
                            Text("Settings")
                        }
                    }
                    .padding(.trailing, 22.0)
                }
                Text("Dashboard").font(.largeTitle).bold()
                AssignmentDashView()
                ExamDashView()
                Text(school1)
                    .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
                    .bold()
                    .padding(.vertical, 5.0)
                    .dynamicTypeSize(/*@START_MENU_TOKEN@*/.xLarge/*@END_MENU_TOKEN@*/)
                    .frame(width: 375.0, alignment: .leading)
                ClassView1()
                Spacer()
            }
        }
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.light/*@END_MENU_TOKEN@*/)
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
        }
    }
}
