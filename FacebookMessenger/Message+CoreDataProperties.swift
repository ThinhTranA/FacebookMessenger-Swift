//
//  Message+CoreDataProperties.swift
//  FacebookMessenger
//
//  Created by Thinh on 4/10/19.
//  Copyright © 2019 VisualSharp. All rights reserved.
//
//

import Foundation
import CoreData


extension Message {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Message> {
        return NSFetchRequest<Message>(entityName: "Message")
    }

    @NSManaged public var date: Date?
    @NSManaged public var text: String?
    @NSManaged public var friend: Friend?

}
