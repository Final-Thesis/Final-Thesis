//
//  RequestSheet.swift
//  IColab
//
//  Created by Kevin Dallian on 20/10/23.
//

import SwiftUI

struct RequestSheet: View {
    @State var request : Request
    @EnvironmentObject var vm : ProjectOverviewViewModel
    @Binding var showSheet : Bool
    @Binding var showProfile : Bool
    var body: some View {
        VStack{
            Circle()
                .frame(width: 64)
            Text(request.worker.accountDetail.name)
            Text(request.role.rawValue)
                .padding(.bottom, 20)
            
            ButtonComponent(title: "View Profile", width: 320) {
                showSheet.toggle()
                showProfile.toggle()
            }
            
            HStack(spacing: 15){
                ButtonComponent(title: "Reject", width: 140, tint: .gray) {
                    vm.rejectRequest(worker: request.worker)
                    showSheet.toggle()
                    vm.deleteRequest(request: request)
                }
                ButtonComponent(title: "Accept", width: 140) {
                    vm.acceptRequest(request: request)
                    showSheet.toggle()
                    vm.deleteRequest(request: request)
                }
            }
        }
    }
}

#Preview {
    RequestSheet(request: MockRequest.array[0], showSheet: .constant(true), showProfile: .constant(false))
}
