//
//  DBManager.swift
//  YelpMe
//
//  Created by Student on 11/9/16.
//  Copyright © 2016 SJSU. All rights reserved.
//

import SQLite

class DBManager{
    
    
    static func dbTest(){
        let path = NSSearchPathForDirectoriesInDomains(
            .documentDirectory, .userDomainMask, true
            ).first!
        
        
        var db : Connection?
        do{
            print("Connecting to DB...")
            db = try Connection("\(path)/db.sqlite3")
        }catch{
            print("Could not connect to DB")
        }
        
        db!.busyTimeout = 5
        let users = Table("users")
        let email = Expression<String>("email")
        
        let name = Expression<String?>("name")
        let id = Expression<Int64>("id")
        
        
        do{
            print("Creating Users table ...")
            try db!.run(users.create { t in
                t.column(id, primaryKey: true)
                t.column(name)
                t.column(email, unique: true)
            })
        }catch{
            print("Could not create users table. Existing?")
        }
        
        
        do{
            print("Inserting Nisse ..")
            let insert = users.insert(name <- "Nisse", email <- "nisse@mac.com")
            let rowid = try db!.run(insert)
        }catch{
            print("Could not insert Nisse..")
        }
        
        
        do{
            for user in try db!.prepare(users) {
                print("id: \(user[id]), name: \(user[name]), email: \(user[email])")
                // id: 1, name: Optional("Alice"), email: alice@mac.com
            }
        }catch{
            print("Could not print users")
        }
        
        
    }
    
    static func returnUserNames() -> [String]{
        var usernames = [String]()
        let users = Table("users")
        let name = Expression<String?>("name")
        let path = NSSearchPathForDirectoriesInDomains(
            .documentDirectory, .userDomainMask, true
            ).first!
        
        
        var db : Connection?
        do{
            print("Connecting to DB...")
            db = try Connection("\(path)/db.sqlite3")
        }catch{
            print("Could not connect to DB")
        }
        
        do{
            for user in try db!.prepare(users) {
                usernames.append(user[name]!)
                // id: 1, name: Optional("Alice"), email: alice@mac.com
            }
            for name in usernames{
                print(name)
            }
        }catch{
            print("Could not print users")
        }
        
        return usernames
    }
}
