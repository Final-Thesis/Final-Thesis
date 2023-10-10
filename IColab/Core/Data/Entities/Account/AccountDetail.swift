//
//  AccountDetail.swift
//  IColab
//
//  Created by Kevin Dallian on 13/09/23.
//

import Foundation

class AccountDetail: Identifiable, Equatable {
    let id: UUID = UUID()
    var name : String
    var desc : String
    var location : String
    var bankAccount : String
    var cvLink : String
    var skills : [String] = []
    var educations : [Education] = []
    var experiences : [Experience] = []
    
    init(name: String, desc: String, location: String, bankAccount: String, cvLink: String, skills: [String] = [], educations: [Education] = [], experiences: [Experience] = []) {
        self.name = name
        self.desc = desc
        self.location = location
        self.bankAccount = bankAccount
        self.cvLink = cvLink
        self.skills = skills
        self.educations = educations
        self.experiences = experiences
    }
    
    public func addSkill(skill : String){
        skills.append(skill)
    }
    
    public func removeSkill(idx : Int){
        skills.remove(at: idx)
    }
    
    public func addEducation(education : Education){
        educations.append(education)
    }
    
    public func removeEducation(idx : Int){
        educations.remove(at: idx)
    }
    
    public func addExperiences(experience : Experience){
        experiences.append(experience)
    }
    
    public func removeExperiences(idx : Int){
        experiences.remove(at: idx)
    }
    
    static func == (lhs: AccountDetail, rhs: AccountDetail) -> Bool {
        return lhs.id == rhs.id
    }
}
