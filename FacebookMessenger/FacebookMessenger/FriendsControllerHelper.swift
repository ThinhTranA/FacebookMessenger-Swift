//
//  FriendsControllerHelper.swift
//  FacebookMessenger
//
//  Created by Thinh on 4/10/19.
//  Copyright © 2019 VisualSharp. All rights reserved.
//

import Foundation

import CoreData

extension FriendsController{
       func setupData(){
        let delegate = UIApplication.sharedApplication().delegate as? AppDelegate
        
        if let context = delegate.manage
        
        let mark = NSEntityDescription.insertNewObjectForEntityForName("Friend", insertNewObjectForEntityForName: context)
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
