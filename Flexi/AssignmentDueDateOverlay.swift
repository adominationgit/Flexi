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
                .padding(.horizontal, 3.0)
                .frame(height: 20.0)
                .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
                .bold()
                .dynamicTypeSize(/*@START_MENU_TOKEN@*/.xLarge/*@END_MENU_TOKEN@*/)
                .labelStyle(.titleOnly)
                
                ) {
                    VStack() {
                        Text("9")
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .frame(height: 30.0, alignment: .top)
                            .dynamicTypeSize(/*@START_MENU_TOKEN@*/.xxLarge/*@END_MENU_TOKEN@*/)
                            
                    }
                }
                .padding(.horizontal)
                .frame(width: 120.0)
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
