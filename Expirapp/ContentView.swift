//
//  ContentView.swift
//  Expirapp
//
//  Created by Henry Torrico Jimpol on 11/2/20.
//
import SwiftUI
import CoreData

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                Text("Banana")
            }
            .navigationBarItems(trailing: Button(action: {
                    print("Open order sheet")
                }, label: {
                    Image(systemName: "plus.circle")
                        .imageScale(.large)
            }))
       
        }
    }
}
