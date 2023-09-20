//
//  AccountDetail.swift
//  IColab
//
//  Created by Kevin Dallian on 13/09/23.
//

import Foundation

class AccountDetail {
    var name : String
    var location : String
    var bankAccount : String
    var skills : [String] = []
    var educations : [Education] = []
    var experiences : [Experience] = []
    
    init(name: String, location: String, bankAccount: String) {
        self.name = name
        self.location = location
        self.bankAccount = bankAccount
    }
    
    init(name: String, location: String, bankAccount: String, skills : [String], educations : [Education], experiences : [Experience]){
        self.name = name
        self.location = location
        self.bankAccount = bankAccount
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
}
