//
//  note.swift
//  IOSBookLibrary
//
//  Created by spykins on 17/07/2016.
//  Copyright © 2016 Andela. All rights reserved.
//

import Foundation

/*
    To use core data
    1. Add it to the project when creating the project
    2. click on the IOSBOOKLibrary.xcdatamodeid
    3. All we need to create is create an Entity - An Entity is more or less like a class, that we will subclass
 It will be a real class, It will provide us with the details and relationship properties that we will need to 
 identify and charactrise it...
    4. For our purpose, Create an Entity and call it Book 
    5. Then we add all the Attributes we need into it
 
    We don't need to do any relationship in this case because that's the only entity we are referencing
 
 After adding the Attributes, We need a way to talk to the Entity, by subclassing it.. i.e We need a way to be able to communicate with an Entity in core data and the classes that we have in swift
 The basic way of Communication without subclass is that we have to use an NsManageObject but subclassing makes it way easier
 
 1. Create new file
 2. Navigate to IOS, Core data and click NsManageObject subclass
 3. This generates two classes for us
  
 
 */