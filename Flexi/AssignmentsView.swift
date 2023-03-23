//
//  AssignmentsView.swift
//  Flexi
//
//  Created by Dominic Snyder on 12/27/22.
//

import SwiftUI
let assignmentstotal:Int = 0
let assignmentdashtxt:String = "No Assignments Due Soon!"
let assignment1:String = "Performance Check in"

struct AssignmentsView: View {
    var body: some View {
            VStack {
                Text(school1)
                    .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
                    .bold()
                    .padding(.vertical, 5.0)
                    .dynamicTypeSize(/*@START_MENU_TOKEN@*/.xLarge/*@END_MENU_TOKEN@*/)
                    .frame(width: 375.0, alignment: .leading)
                GroupBox(label: Label(assignmentdashtxt, systemImage: "tray")
                    .padding(.vertical, 30.0)
                    .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
                    .bold()
                    .dynamicTypeSize(/*@START_MENU_TOKEN@*/.xLarge/*@END_MENU_TOKEN@*/)
                    .labelStyle(.titleOnly)) {
                    }
                    .padding(.horizontal)
                Text("Due Later...")
                    .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
                    .bold()
                    .padding(.vertical, 5.0)
                    .dynamicTypeSize(/*@START_MENU_TOKEN@*/.xLarge/*@END_MENU_TOKEN@*/)
                    .frame(width: 375.0, alignment: .leading)
                HStack {
                    GroupBox(label: Label(assignment1, systemImage: "tray")
                        .padding(.bottom, 5.0)
                        .font(/*@START_MENU_TOKEN@*/.title3/*@END_MENU_TOKEN@*/)
                        .bold()
                        .dynamicTypeSize(/*@START_MENU_TOKEN@*/.xLarge/*@END_MENU_TOKEN@*/)
                        .labelStyle(.titleOnly)
                        ) {
                        HStack {
                            Label("Icon", systemImage: "deskclock")
                                .padding(.trailing, 5.0)
                                .labelStyle(.iconOnly)
                                .dynamicTypeSize(/*@START_MENU_TOKEN@*/.xxxLarge/*@END_MENU_TOKEN@*/)
                            VStack {
                                    Text("Advanced Band")
                                        .frame(width: 300, alignment: .leading)
                                        .font(/*@START_MENU_TOKEN@*/.headline/*@END_MENU_TOKEN@*/)
                                    Text("Mr Comeau in Room 1056")
                                        .frame(width: 300, alignment: .leading)
                                        .font(/*@START_MENU_TOKEN@*/.subheadline/*@END_MENU_TOKEN@*/)
                                }
                        }
                    }
                        .overlay(AssignmentDueDateOverlay()
                            .frame(width: 395.0,height: 100.0, alignment: .trailing))
                }
                    .padding(.horizontal)
                
                Spacer()
            }
            .navigationTitle("Assignments")
            .navigationBarTitleDisplayMode(.large)
        }
    }

struct AssignmentsView_Previews: PreviewProvider {
    static var previews: some View {
        AssignmentsView()
    }
}
