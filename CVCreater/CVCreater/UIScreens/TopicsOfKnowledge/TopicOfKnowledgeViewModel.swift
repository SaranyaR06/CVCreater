//
//  TopicOfKnowledgeViewModel.swift
//  CVCreater
//
//  Created by Saranya Rathinasamy on 30/05/19.
//  Copyright © 2019 Infosys. All rights reserved.
//

import Foundation
import UIKit
class TopicOfKnowledgeViewModel {

    class func saveData(tokViewObject:TopicsOfKnowledgeView) {

        //Saving EmployementInfo to ModelClass
        var tokObject = ModelClasses.TopicsOfKnowledge()
        var dict:[String:String] = [:]
        var topicOfKnowledgeArray = [[String:String]]();

        //Retrieving and storing data to Singleton classes
        if let tok = tokViewObject.knowledge1.text{
            tokObject.areaOfExpertise = tok
            tokObject.experience = tokViewObject.experience1.text ?? ""

            //Converting to Dict for saving
            dict = ModelClasses.sharedInstance.getTopicsOfKnowledgeDict(tok:tokObject)

            //Adding as an Array since many course can be added
            topicOfKnowledgeArray.append(dict)
        }

        if let tok = tokViewObject.knowledge2.text{
            tokObject.areaOfExpertise = tok
            tokObject.experience = tokViewObject.experience2.text ?? ""

            //Converting to Dict for saving
            dict = ModelClasses.sharedInstance.getTopicsOfKnowledgeDict(tok:tokObject)

            //Adding as an Array since many course can be added
            topicOfKnowledgeArray.append(dict)
        }
        if let tok = tokViewObject.knowledge3.text{
            tokObject.areaOfExpertise = tok
            tokObject.experience = tokViewObject.experience3.text ?? ""

            //Converting to Dict for saving
            dict = ModelClasses.sharedInstance.getTopicsOfKnowledgeDict(tok:tokObject)

            //Adding as an Array since many course can be added
            topicOfKnowledgeArray.append(dict)
        }
        if let tok = tokViewObject.knowledge4.text{
            tokObject.areaOfExpertise = tok
            tokObject.experience = tokViewObject.experience4.text ?? ""

            //Converting to Dict for saving
            dict = ModelClasses.sharedInstance.getTopicsOfKnowledgeDict(tok:tokObject)

            //Adding as an Array since many course can be added
            topicOfKnowledgeArray.append(dict)
        }
        if let tok = tokViewObject.knowledge5.text{
            tokObject.areaOfExpertise = tok
            tokObject.experience = tokViewObject.experience5.text ?? ""

            //Converting to Dict for saving
            dict = ModelClasses.sharedInstance.getTopicsOfKnowledgeDict(tok:tokObject)

            //Adding as an Array since many course can be added
            topicOfKnowledgeArray.append(dict)
        }

    //Saving it to Singleton Object
    ResumeDataModel.sharedInstance.technicalExpertise = topicOfKnowledgeArray

}

class func loadData(tokViewObject:TopicsOfKnowledgeView){

    //Loading data from retrieved URL data

    //Populating Array
    let topicOfKnowledgeArray:[[String:String]] = ResumeDataModel.sharedInstance.technicalExpertise

    //populating data to view - initial load
     var i = 0
    while(i<topicOfKnowledgeArray.count)
    {
        switch(i){
        case 0:
            let tok = ModelClasses.sharedInstance.setTopicOfKnowledgeDict(data: topicOfKnowledgeArray[i])
            tokViewObject.knowledge1.text = tok.areaOfExpertise
            tokViewObject.experience1.text =  tok.experience
        case 1:
            let tok = ModelClasses.sharedInstance.setTopicOfKnowledgeDict(data: topicOfKnowledgeArray[i])
            tokViewObject.knowledge2.text = tok.areaOfExpertise
            tokViewObject.experience2.text =  tok.experience
        case 2:
            let tok = ModelClasses.sharedInstance.setTopicOfKnowledgeDict(data: topicOfKnowledgeArray[i])
            tokViewObject.knowledge3.text = tok.areaOfExpertise
            tokViewObject.experience3.text =  tok.experience
        case 3:
            let tok = ModelClasses.sharedInstance.setTopicOfKnowledgeDict(data: topicOfKnowledgeArray[i])
            tokViewObject.knowledge4.text = tok.areaOfExpertise
            tokViewObject.experience4.text =  tok.experience
        case 4:
            let tok = ModelClasses.sharedInstance.setTopicOfKnowledgeDict(data: topicOfKnowledgeArray[i])
            tokViewObject.knowledge5.text = tok.areaOfExpertise
            tokViewObject.experience5.text =  tok.experience
        default:
            break
    }
        i+=1;
    }

}
}
