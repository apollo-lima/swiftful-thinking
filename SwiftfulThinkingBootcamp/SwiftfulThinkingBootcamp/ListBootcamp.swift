//
//  ListBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Apollo Lima on 22/05/2024.
//

import SwiftUI

struct ListBootcamp: View {
    
    @State var fruits: [String] = [
    "apple", "orange", "banana", "peach"
    ]
    @State var veggies: [String] = [
    "tomato", "potato", "carrot"
    ]
    var body: some View {
        NavigationView {
            List {
                Section(
                    header:
                        HStack {
                            Text("Fruits")
                            Image(systemName: "flame.fill")
                        }
                        .foregroundStyle(.purple)
                        .font(.headline)
                ) {
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit.capitalized)
                            .font(.caption)
                            .foregroundStyle(Color.white)
                            .padding(.vertical)
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                    .listRowBackground(Color.blue)
                }
                
                Section(
                    header: Text("Veggies")
                        .foregroundStyle(.purple)
                ) {
                    ForEach(veggies, id: \.self) { veggie in
                        Text(veggie.capitalized)
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                }
                
            }
            //            .listStyle(GroupedListStyle())
            .navigationTitle("Grocery List")
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    EditButton()
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    addButton
                }
            }
        }
        .accentColor(.red)
    }
    
    var addButton: some View {
        Button(action: {
            add()
        }, label: {
            Text("Add")
        })
    }
    
    func delete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
        print(fruits)
    }
    
    func move(indices: IndexSet, newOffset: Int) {
        fruits.move(fromOffsets: indices, toOffset: newOffset)
    }
    
    func add() {
        fruits.append("Coconut")
    }
}

#Preview {
    ListBootcamp()
}
