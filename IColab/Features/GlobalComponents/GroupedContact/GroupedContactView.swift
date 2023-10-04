//
//  GroupedContactView.swift
//  IColab
//
//  Created by Jeremy Raymond on 24/09/23.
//

import SwiftUI

struct GroupedContactView: View {
    @EnvironmentObject var vm: ChatListViewModel
    
    var members: [Account] = Mock.accounts
    
    var body: some View {
        VStack {
            ForEach(vm.projects) { project in
                ProjectContactView(project: project)
            }
        }
        
    }
}

struct GroupedContactView_Previews: PreviewProvider {
    static var previews: some View {
        GroupedContactView()
    }
}
