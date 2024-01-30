//
//  ContentView.swift
//  Whack
//
//  Created by Alice Di Nunno on 28/09/2023.
//

import SwiftUI
import SwiftData
import GridStack
import Kingfisher
 

struct ContentView: View {
    @EnvironmentObject var imageData: ImageData 
    
    var body: some View {
      /*  NavigationView{
            GridStack(minCellWidth: UIScreen.main.bounds.width/3-20, spacing: 3, numItems: imageData.photos.count) {
                index, cellWidth in
                
                NavigationLink(destination:
                                DetailView()
                    .environmentObject(ImageCounter.init(index: index))) {
                        KFImage(URL(string: self.imageData.photos[index].name))
                            .renderingMode(.original)
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(12)
                    }
            }*/
            DetailView().environmentObject(ImageCounter.init(index: 0))
       // }
    }
}




/*
struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var items: [Item]

    var body: some View {
        NavigationSplitView {
            List {
                ForEach(items) { item in
                    NavigationLink {
                        Text("Item at \(item.timestamp, format: Date.FormatStyle(date: .numeric, time: .standard))")
                    } label: {
                        Text(item.timestamp, format: Date.FormatStyle(date: .numeric, time: .standard))
                    }
                }
                .onDelete(perform: deleteItems)
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    EditButton()
                }
                ToolbarItem {
                    Button(action: addItem) {
                        Label("Add Item", systemImage: "plus")
                    }
                }
            }
        } detail: {
            Text("Select an item")
        }
    }

    private func addItem() {
        withAnimation {
            let newItem = Item(timestamp: Date())
            modelContext.insert(newItem)
        }
    }

    private func deleteItems(offsets: IndexSet) {
        withAnimation {
            for index in offsets {
                modelContext.delete(items[index])
            }
        }
    }
}
*/
/*#Preview {
    @Binding(projectedValue: false) var fspreview: Bool
    ContentView(isFullscreen: $fspreview)
        .modelContainer(for: Item.self, inMemory: true)
}
*/
