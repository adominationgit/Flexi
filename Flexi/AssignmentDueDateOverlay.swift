//
//  AssignmentDueDateOverlay.swift
//  Flexi
//
//  Created by Dominic Snyder on 1/1/23.
//

import SwiftUI

struct AssignmentDueDateOverlay: View {
    var body: some View {
        NavigationLink(destination: AssignmentInfoPopup()) {
            GroupBox(label: Label("JAN", systemImage: "tray")
                .padding(.leading, 8.0)
                .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
                .bold()
                .dynamicTypeSize(/*@START_MENU_TOKEN@*/.xLarge/*@END_MENU_TOKEN@*/)
                .labelStyle(.titleOnly)
                
                ) {
                    VStack() {
                        Text("9")
                            .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
                    }
                }
                .padding(.horizontal)
                .frame(width: 130.0)
                .colorInvert()
                .accentColor(/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/)
        }
    }
        }

struct AssignmentDueDateOverlay_Previews: PreviewProvider {
    static var previews: some View {
        AssignmentDueDateOverlay()
    }
}
