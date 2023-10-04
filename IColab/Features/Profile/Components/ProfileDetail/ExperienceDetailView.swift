//
//  ExperienceDetailView.swift
//  IColab
//
//  Created by Kevin Dallian on 12/09/23.
//

import SwiftUI

struct ExperienceDetailView: View {
    @EnvironmentObject var pvm : ProfileViewModel
    @Binding var showAlert : Bool
    var background : Background
    var editMode : Bool
    var body: some View {
        HStack(spacing: 15){
            Image(.purple)
                .resizable()
                .frame(width: 48, height: 92)
                .cornerRadius(12)
            VStack(alignment: .leading){
                HStack{
                    Text(background.title)
                        .fontWeight(.bold)
                    if editMode {
                        Spacer()
                        Button{
                            showAlert.toggle()
                        } label: {
                            Image(systemName: "trash")
                        }.buttonStyle(.plain)
                        NavigationLink {
                            EditFormView(background: background, index: pvm.getBackgroundIndex(background: background))
                                .environmentObject(pvm)
                        } label: {
                            Image(systemName: "pencil")
                        }.buttonStyle(.plain)

                    }
                }
                Text(background.company)
                    .font(.subheadline)
                Text("\(background.startDate.formatted(date: .abbreviated, time: .omitted)) - \(background.endDate.formatted(date: .abbreviated, time: .omitted))")
                    .font(.caption)
                Text(background.desc)
                    .font(.caption)
            }
        }
        .alert("Delete Item", isPresented: $showAlert, presenting: background) 
        { background in
            Button("Delete", role: .destructive) {
                pvm.deleteBackground(background: background)
            }
            Button("Cancel", role: .cancel){
                print("cancel")
            }
        } message: { background in
            Text("Delete this \(background.title)")
        }

    }
}

struct ExperienceDetailView_Previews: PreviewProvider {
    static var previews: some View {
        VStack{
            ExperienceDetailView(showAlert: .constant(false), background: MockAccountDetails.array[0].experiences[0], editMode: false)
                .environmentObject(ProfileViewModel(uid: Mock.accounts[0].id))
            ExperienceDetailView(showAlert: .constant(false), background: MockAccountDetails.array[0].experiences[0], editMode: true)
                .environmentObject(ProfileViewModel(uid: Mock.accounts[0].id))
        }
        
    }
}
