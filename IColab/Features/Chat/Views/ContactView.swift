//
//  ContactView.swift
//  IColab
//
//  Created by Jeremy Raymond on 29/09/23.
//

import SwiftUI

struct ContactView: View {
    var name: String = "Contact Name"
    var text: String = "Latest Text"
    var time: String = "Time"
    
    var body: some View {
        HStack {
            ZStack {
                Circle()
                    .foregroundColor(.blue)
                VStack {
                    HStack {
                        Spacer()
                        Image(systemName: "crown.fill")
                            .font(.caption2)
                        
                    }
                    Spacer()
                }
                
            }
            .frame(width: 48, height: 48)
            VStack {
                HStack {
                    VStack(alignment: .leading) {
                        Text(name)
                            .font(.headline)
                        Text(text)
                            .font(.footnote)
                    }
                    Spacer()
                    VStack(alignment: .trailing) {
                        Text(time)
                            .font(.footnote)
                        Image(systemName: "pin.circle")
                            .font(.caption2)
                        Divider()
                            
                    }
                }
                Divider()
                    .background(.white)
            }
            .padding(8)
            
            
        }
        .padding(4)
    }
}

#Preview {
    ContactView()
}
