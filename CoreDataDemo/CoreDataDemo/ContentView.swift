//
//  ContentView.swift
//  CoreDataDemo
//
//  Created by Elvis Masiya on 2022/10/17.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @Environment(\.managedObjectContext) private var viewContext
//    @FetchRequest(sortDescriptors: [NSSortDescriptor(keyPath: \Item.timestamp, ascending: true)],animation: .default)
//    private var items: FetchedResults<Item>
    
                                                                                       
    @FetchRequest(sortDescriptors: []) var people:FetchedResults<Person>
    var body: some View {
        VStack {
            Button(action: addItem) {
                Label("Add Item", systemImage: "plus")
                
            }
            
            List{
                ForEach(people){
                    person in
                     
                    Text(person.name ?? "No Name").onTapGesture {
//                        person.name = "Joe"  //Updating data in Core Data
//                        try! viewContext.save()
                        
                        viewContext.delete(person)  //Deleting data in Core Data
                        try! viewContext.save()
                    }
                }
            }
        }
            

    }

    //Creating Data In CoreData
    private func addItem() {
        let  p = Person(context: viewContext)
        p.age = 20
        p.name = "Tom"
        
        do{
            try viewContext.save()
            
        }catch{
            
            //error with saving
        }
        
        

    }

//    private func deleteItems(offsets: IndexSet) {}

}

private let itemFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateStyle = .short
    formatter.timeStyle = .medium
    return formatter
}()

