//
//  Playground.swift
//  TodoIOS
//
//  Created by Hamdi Tuğ on 20.04.2024.
//

import SwiftUI

struct Playground: View {
    
    @State private var count : Int = 0
    
    @State private var textInput : String = ""
    
    private let initVal : Int = 0
    
    var body: some View {
        VStack {
            Text("Count : \(count)")
                .font(.title2)
            
            HStack{
                Button(action :{
                    count += 1
                }){
                    Text("Increase")
                        .padding()
                        .background(.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
                
                Button(action :{
                    count -= 1
                }){
                    Text("Decrease")
                        .padding()
                        .background(.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
                
                Button(action :{
                    count = initVal
                }){
                    Text("Reset")
                        .padding()
                        .background(.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
            }
            
            Divider()
            
            VStack{
                TextField("Enter text",text : $textInput)
                    .cornerRadius(8)
                    
                Text("Entered text : \(textInput)")
            }.padding()
            
        }
    }
}

struct Playground_Previews: PreviewProvider {
    static var previews: some View {
        Playground()
    }
}
