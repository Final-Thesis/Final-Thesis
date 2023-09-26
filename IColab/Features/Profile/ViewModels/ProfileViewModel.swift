//
//  ProfileViewModel.swift
//  IColab
//
//  Created by Kevin Dallian on 11/09/23.
//

import Foundation
import SwiftUI

class ProfileViewModel : ObservableObject {
    @Published var account : Account?
    @Published var pickerSelection : PickerItem = .overview
    @Published var showEdit : Bool = false
    
    let pickerItems : [PickerItem] = [.overview, .portofolio]
    init(uid: String){
        self.account = getAccount(uid: uid)
    }
    
    private func getAccount(uid: String) -> Account?{
        return Mock.accounts.first { account in
            account.id == uid
        }
    }
    
    public func getBackgroundIndex(background : Background) -> Int {
        var index = -1
        if background is Experience {
            index = account!.accountDetail.experiences.firstIndex(of: background as! Experience) ?? -1
        }else if background is Education{
            index = account!.accountDetail.educations.firstIndex(of: background as! Education) ?? -1
        }
        return index
    }
    
    public func saveBackground(background : Background, index : Int) {
        if index != -1{
            if background is Experience {
                account?.accountDetail.experiences[index] = background as! Experience
            } else if background is Education {
                account?.accountDetail.educations[index] = background as! Education
            }
        } else{
            if background is Experience {
                account?.accountDetail.addExperiences(experience: background as! Experience)
            } else if background is Education {
                account?.accountDetail.addEducation(education: background as! Education)
            }
        }
        withAnimation {
            objectWillChange.send()
        }
    }
    
    public func addBackground(background : Background) {
        if background is Experience {
            account?.accountDetail.addExperiences(experience: background as! Experience)
        } else if background is Education {
            account?.accountDetail.addEducation(education: background as! Education)
        }
        withAnimation {
            objectWillChange.send()
        }
    }
    
    public func deleteBackground(background : Background) {
        var index = 0
        if background is Experience {
            index = account!.accountDetail.experiences.firstIndex(of: background as! Experience) ?? 0
            account?.accountDetail.removeExperiences(idx: index)
        }else if background is Education{
            index = account!.accountDetail.educations.firstIndex(of: background as! Education) ?? 0
            account?.accountDetail.removeEducation(idx: index)
        }
        withAnimation {
            objectWillChange.send()
        }
        
    }
    
    public func addSkills(skill : String){
        account?.accountDetail.skills.append(skill)
    }
    
    public func deleteSkills(skill : String){
        let index = account?.accountDetail.skills.firstIndex(of: skill) ?? -1
        if index != -1 {
            account?.accountDetail.removeSkill(idx: index)
            withAnimation {
                objectWillChange.send()
            }
        }
    }
}
