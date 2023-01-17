//
//  ContentView.swift
//  Exercise-Displaying a list
//
//  Created by Juan Romero on 17/01/23.
//

import SwiftUI

struct ContentView: View {
    //Observed
    @ObservedObject private var model=Model()
    var body: some View {
        VStack {
            
            List{
                ForEach(model.comidas) { item in
                    Text(item.name)
                }
                
            }
            
        }
        .padding()
    }
}

struct Item: Identifiable{
    let id = UUID()
    let name:String
}
            //Observable
class Model: ObservableObject {
    @Published var comidas: [Item] = menuItems()
}

func menuItems() -> [Item] {
    return[
        Item(name: "Verduras"),
        Item(name: "Pollo Frito"),
        Item(name: "Calabaza con Queso"),
        Item(name: "Pizza")
    ]
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
