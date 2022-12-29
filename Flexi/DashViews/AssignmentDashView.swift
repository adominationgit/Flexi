//
//  AssignmentDashView.swift
//  Flexi
//
//  Created by Dominic Snyder on 12/27/22.
//

import SwiftUI
let assignmentstotal:Int = 0
var assignmentdashtxt:String = "No Assignments Due Soon!"

struct AssignmentDashView: View {
    var body: some View {
        NavigationStack {
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
        }
    }
    
    struct AssignmentDashView_Previews: PreviewProvider {
        static var previews: some View {
            AssignmentDashView()
        }
    }
}
