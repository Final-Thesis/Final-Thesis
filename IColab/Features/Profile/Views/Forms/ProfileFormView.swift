//
//  ProfileFormView.swift
//  IColab
//
//  Created by Kevin Dallian on 18/10/23.
//

import SwiftUI

struct ProfileFormView: View {
    @EnvironmentObject var pvm : ProfileViewModel
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State var name = ""
    @State var role = ""
    @State var region = ""
    @State var desc = ""
    var body: some View {
        VStack{
            FormTextField(title: "Name", textField: $name)
                .padding(.top, 20)
            FormTextField(title: "Role", textField: $role)
            FormTextField(title: "Region", textField: $region)
            FormTextField(title: "Description", textField: $desc)
            Spacer()
            ButtonComponent(title: "Save", width: 320) {
                pvm.editProfile(name: name, role: role, region: region, desc: desc)
                self.presentationMode.wrappedValue.dismiss()
            }
        }
        .navigationTitle("Edit Profile")
    }
}

#Preview {
    NavigationStack{
        ProfileFormView()
    }
}
