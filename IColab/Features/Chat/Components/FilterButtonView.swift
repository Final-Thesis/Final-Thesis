//
//  FilterButtonView.swift
//  IColab
//
//  Created by Jeremy Raymond on 29/09/23.
//

import SwiftUI

struct FilterButtonView: View {
    @EnvironmentObject var vm: ChatListViewModel
    var filterType: ChatFilterType = .all
    
    var body: some View {
        Button(action: {
            vm.filterType = self.filterType
        }, label: {
            if vm.filterType == self.filterType {
                Text(filterType.rawValue)
                    .frame(maxWidth: 162)
                    .padding(8)
                    .background(.purple)
                    .cornerRadius(12)
            }
            else {
                Text(filterType.rawValue)
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
