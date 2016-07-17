//
//  Book+CoreDataProperties.swift
//  IOSBookLibrary
//
//  Created by spykins on 17/07/2016.
//  Copyright © 2016 Andela. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Book {

    @NSManaged var publishDate: String?
    @NSManaged var author: String?
    @NSManaged var desc: String?
    @NSManaged var descUri: String?
    @NSManaged var id: String?
    @NSManaged var imageUrl: String?
    @NSManaged var rating: NSNumber?
    @NSManaged var title: String?

}
