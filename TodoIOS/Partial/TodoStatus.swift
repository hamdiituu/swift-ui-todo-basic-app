//
//  TodoStatus.swift
//  TodoIOS
//
//  Created by Hamdi Tuğ on 20.04.2024.
//

import SwiftUI

struct TodoStatus : View{
    var status : Bool
    
    var body: some View {
        let bg : Color = status ? Color.green : Color.orange
        
        Text(status ? "Done" : "Waiting")
            .font(.footnote)
            .foregroundColor(.white)
            .padding(8)
            .background(bg)
            .clipShape(Capsule())
    }
}
