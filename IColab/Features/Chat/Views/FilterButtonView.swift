//
//  FilterButtonView.swift
//  IColab
//
//  Created by Jeremy Raymond on 29/09/23.
//

import SwiftUI

struct FilterButtonView: View {
    var text: String = "Button"
    @State var toggle: Bool = false
    
    var body: some View {
        Button(action: {
            toggle.toggle()
        }, label: {
            if toggle {
                /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
                    .frame(maxWidth: 162)
                    .padding(8)
                    .background(.purple)
                    .cornerRadius(12)
            }
            else {
                /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
                    .frame(maxWidth: 162)
                    .padding(8)
                    .overlay(
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(Color.white, lineWidth: 2)
                    )
            }
            
        })
        .buttonStyle(.plain)
    }
}

#Preview {
    FilterButtonView()
}
