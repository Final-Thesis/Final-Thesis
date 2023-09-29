//
//  ButtonComponent.swift
//  IColab
//
//  Created by Kevin Dallian on 04/09/23.
//

import SwiftUI

struct ButtonComponent: View {
    var title : String
    var role : ButtonRole?
    var action : () -> Void
    var width : CGFloat
    var tint : Color
    
    init(title: String, role: ButtonRole? = nil, width : CGFloat, tint: Color = Color(.purple), action: @escaping () -> Void) {
        self.title = title
        self.role = role
        self.action = action
        self.width = width
        self.tint = tint
    }
    var body: some View {
        Button(role: role, action: action) {
            Text("\(title)")
                .font(.callout)
                .fontWeight(.bold)
                .frame(width: width)
        }
        .buttonStyle(.borderedProminent)
        .buttonBorderShape(.roundedRectangle(radius: 12))
        .tint(self.tint)
    }
}

struct ButtonComponent_Previews: PreviewProvider {
    static var previews: some View {
        ButtonComponent(title: "Button", width: 100){
            print("I'm a button")
        }
    }
}
