//
//  FriendsControllerHelper.swift
//  FacebookMessenger
//
//  Created by Thinh on 4/10/19.
//  Copyright © 2019 VisualSharp. All rights reserved.
//

import Foundation

class Friend: NSObject {
    var name: String?
    var profileImageName: String?
}

class Message: NSObject{
    var text: String?
    var date: Date?
    
    var friend: Friend?
}


extension FriendsController{
       func setupData(){
         let mark = Friend()
         mark.name = "Mark Zuckerberg"
         mark.profileImageName = "zuckprofile"
         
         let message = Message()
         message.friend = mark
         message.text = "Hello, my name is Mark. Nice to meet you..."
         message.date = Date()
        
        let steve = Friend()
        steve.name = "Steve Jobs"
        steve.profileImageName = "steve_profile"
        
        let messageSteve = Message()
        messageSteve.friend = steve
        messageSteve.text = "Apple creates great iOS Devices for the world.."
        messageSteve.date = Date()
         
         messages = [message, messageSteve]
     }}
