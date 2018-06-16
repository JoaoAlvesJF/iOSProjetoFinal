//
//  ViewController+CoreData.swift
//  ListaDeCompras
//
//  Created by João Alves on 15/06/2018.
//  Copyright © 2018 JoaoAlves. All rights reserved.
//

import UIKit
import CoreData

extension UIViewController {
    var context: NSManagedObjectContext{
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        return appDelegate.persistentContainer.viewContext
        
    }
}
