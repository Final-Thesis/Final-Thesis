//
//  InputTagsView.swift
//  IColab
//
//  Created by Jeremy Raymond on 24/09/23.
//

import SwiftUI

struct InputTagsView: View {
    @State var popupToggle: Bool = false
    
    var body: some View {
        ZStack {
            VStack(alignment: .leading) {
                HStack {
                    Text("Input Tags")
                        .font(.headline)
                    Spacer()
                    Button {
                        withAnimation {
                            popupToggle.toggle()
                        }
                    } label: {
                        Image(systemName: "plus.circle.fill")
                    }
                    .buttonStyle(.plain)

                }
                
                HStack {
                    HStack {
                        Text("Tag")
                        Button {
                            //
                        } label: {
                            Image(systemName: "x.circle.fill")
                        }
                        .buttonStyle(.plain)
                    }
                    .padding(8)
                    .background(.purple)
                    .cornerRadius(12)
                }
                Divider()
                    .foregroundColor(.white)
            }
    
            if popupToggle {
                InputTagPopupView(popupToggle: $popupToggle)
                    .transition(.opacity)
                    .zIndex(1)
            }
        }
        
    }
}

struct InputTagsView_Previews: PreviewProvider {
    static var previews: some View {
        InputTagsView()
            .preferredColorScheme(.dark)
    }
}
