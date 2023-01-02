//
//  ContentView.swift
//  Flexi
//
//  Created by Dominic Snyder on 12/23/22.
//

import SwiftUI
import CoreData
var school1 = "East Ridge High School"
var school2 = "Inver Hills Community College"

struct ContentView: View {
    @State var showSheetView = false
    var body: some View {
        NavigationView {
            // Assignments Dash View
            VStack {
                NavigationLink(destination: AssignmentsView()) {
                    GroupBox(label: Label(assignmentdashtxt, systemImage: "tray")
                        .padding(.bottom, 50.0)
                        .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
                        .bold()
                        .dynamicTypeSize(/*@START_MENU_TOKEN@*/.xLarge/*@END_MENU_TOKEN@*/)
                        .labelStyle(.titleOnly)) {
                            VStack() {
                                Label("Tap to view all assignments", systemImage: "arrowshape.turn.up.right")
                                    .frame(width: 350.0, alignment: .leading)
                            }
                        }
                        .padding(.horizontal)
                }
                .accentColor(/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/)
                // Exams Dash View
                NavigationLink(destination: ExamsView()) {
                    GroupBox(label: Label(examdashtxt, systemImage: "tray")
                        .padding(.bottom, 50.0)
                        .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
                        .bold()
                        .dynamicTypeSize(/*@START_MENU_TOKEN@*/.xLarge/*@END_MENU_TOKEN@*/)
                        .labelStyle(.titleOnly)) {
                            VStack() {
                                Label("Tap to view all exams", systemImage: "arrowshape.turn.up.right")
                                    .frame(width: 350.0, alignment: .leading)
                            }
                        }
                        .padding(.horizontal)
                }
                .accentColor(/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/)
                //School Divider Text
                Text(school1)
                    .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
                    .bold()
                    .padding(.vertical, 5.0)
                    .dynamicTypeSize(/*@START_MENU_TOKEN@*/.xLarge/*@END_MENU_TOKEN@*/)
                    .frame(width: 375.0, alignment: .leading)
                // School 1 Class Dash View
                NavigationLink(destination: ClassesView()) {
                    GroupBox(label: Label(nextclass1, systemImage: "tray")
                        .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
                        .bold()
                        .dynamicTypeSize(/*@START_MENU_TOKEN@*/.xLarge/*@END_MENU_TOKEN@*/)
                        .labelStyle(.titleOnly)) {
                            VStack() {
                                Text("in 5 minutes")
                                    .foregroundColor(/*@START_MENU_TOKEN@*/.red/*@END_MENU_TOKEN@*/)
                                    .padding(.bottom, 5.0)
                                    .frame(width: 350.0, alignment: .leading)
                                Text("Mr. Comeau in Room 1056")
                                    .padding(.bottom, 10.0)
                                    .frame(width: 350.0, alignment: .leading)
                                
                                Label("Tap to view all classes", systemImage: "arrowshape.turn.up.right")
                                    .frame(width: 350.0, alignment: .leading)
                            }
                        }
                        .padding(.horizontal)
                }
                .accentColor(/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/)
                Spacer()
            }
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.light/*@END_MENU_TOKEN@*/)
            .navigationTitle("Dashboard")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                        Menu {
                            Button(action: {
                                self.showSheetView.toggle()
                            }) {
                                Label("Settings", systemImage: "gear")
                            }
                        }
                    label: {
                        Label("Menu", systemImage: "ellipsis.circle")
                    }
                }
            }
        }.sheet(isPresented: $showSheetView) {
            SettingsView(showSheetView: self.$showSheetView)
        }
    }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
        }
    }
