//
//  Todo.swift
//  TodoIOS
//
//  Created by Hamdi Tuğ on 20.04.2024.
//

struct Todo : Identifiable , Hashable {
    let id : Int
    var title : String
    var done : Bool
}
