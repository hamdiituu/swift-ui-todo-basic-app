//
//  TodoList.swift
//  TodoIOS
//
//  Created by Hamdi Tuğ on 20.04.2024.
//

import SwiftUI

struct TodoList: View{
    
    @State private var query : String  = ""
    
    @State private var showModal : Bool = false;
    
    @State private var todos : [Todo] = [
        Todo(id : 1,title : "Swift Todo App Create",done :false),
        Todo(id : 2,title : "Swift Todo App List View",done :false),
        Todo(id : 3,title : "Swift Todo App Folders",done :false)
    ]

    
    private func done(_ id : Int){
        todos = todos.map({ todo in
            var updatedTodo = todo;
            if updatedTodo.id == id{
                updatedTodo.done = !updatedTodo.done
            }
            
            return updatedTodo
        })
    }
    
    
    var result : [Todo] {
        return query.isEmpty ? todos : todos.filter({
            todo in todo.title.lowercased().contains(query.lowercased())
        })
    }
    
    var body: some View {
        NavigationView{

            List{
                ForEach(result , id: \.self){
                    todo in HStack(alignment: .center){
                        VStack(alignment: .leading){
                            Text(todo.title).font(.subheadline)
                            
                        }
                        Spacer()
                        TodoStatus(status : todo.done).onTapGesture {
                            done(todo.id)
                        }
                    }
                }
            }
            .listStyle(.inset)
            .padding()
            .navigationTitle("To do List First")
            .searchable(text: $query)
            
            
        }
    }
}

struct TodoList_Previews : PreviewProvider {
    static var previews: some View {
        TodoList()
    }
}
