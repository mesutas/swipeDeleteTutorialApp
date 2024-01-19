//
//  ContentView.swift
//  SwipeDeleteTutorial
//
//  Created by asdirector on 19.01.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var nameList = ["Elma", "Armut","Portakal","Muz","Limon"]
    var body: some View {
        NavigationStack {
            
            List{
                
                ForEach(nameList, id:\.self) { name in
                    Text(name)
                        .padding()
                        .swipeActions{
                            Button(role: .destructive){
//                                todo delete
                            }label: {
                                Label("Delete", systemImage: "trash.fill")
                            }
                        }
                    
                        .swipeActions {
                            Button{
//                                Todo Edit
                            }label: {
                                Label("Edit", systemImage: "square.and.pencil")
                            }
                            .tint(.blue)
                        }
                    
                        .swipeActions(edge: .leading){
                            Button{
//                                todo mic
                            }label: {
                                Label("Mic", systemImage: "mic.fill")
                            }
                            .tint(.green)
                        }
                    
                }
            }
            .navigationTitle("Meyve Listesi")
            
        }
        
    }
}

#Preview {
    ContentView()
}
