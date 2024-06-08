//
//  ViewModelBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Apollo Lima on 07/06/2024.
//

import SwiftUI

struct FruitModel: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let count: Int
}

class FruitViewModel: ObservableObject {
    // The same thing as the State but in a Class
    @Published var fruitArray: [FruitModel] = []
    @Published var isLoading: Bool = false
    
    init() {
        getFruits()
    }
    
    func getFruits() {
        let fruit1 = FruitModel(name: "Orange", count: 1)
        let fruit2 = FruitModel(name: "Banana", count: 2)
        let fruit3 = FruitModel(name: "Watermelon", count: 88)
        
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            self.fruitArray.append(fruit1)
            self.fruitArray.append(fruit2)
            self.fruitArray.append(fruit3)
            self.isLoading = false
        }
    }
    
    func deleteFruit(index: IndexSet) {
        fruitArray.remove(atOffsets: index)
    }
    
}

struct ViewModelBootcamp: View {
    
    // @StateObject -> USE THIS ON CREATION / INIT
    // @ObservedObject -> USE THIS FOR SUBVIEWS
    // when you are using this for the first time in your app, use @StateObject, if you're passing to another view/subview use @ObservedObject
    @StateObject var fruitViewModel: FruitViewModel = FruitViewModel()
    
    var body: some View {
        NavigationStack {
            List {
                
                if fruitViewModel.isLoading {
                    ProgressView()
                } else {
                    ForEach(fruitViewModel.fruitArray) { fruit in
                        HStack {
                            Text("\(fruit.count)")
                                .foregroundStyle(.red)
                            Text(fruit.name)
                                .font(.headline)
                                .bold()
                        }
                    }
                    .onDelete(perform: fruitViewModel.deleteFruit)
                }
            }
            .listStyle(GroupedListStyle())
            .navigationTitle("Fruit List")
            .toolbar {
                NavigationLink(destination: RandomScreen(fruitViewModel: fruitViewModel)) {
                    Image(systemName: "arrow.right")
                        .font(.title)
                }
            }
        }
    }
}

struct RandomScreen: View {
    
//    @Environment(\.dismiss) var dismissScreen
    @ObservedObject var fruitViewModel: FruitViewModel
    
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            
//            Button {
//                dismissScreen()
//            } label: {
//                Text("GO BACK")
//                    .foregroundStyle(.white)
//                    .font(.largeTitle)
//                    .fontWeight(.semibold)
//            }
            
            VStack {
                ForEach(fruitViewModel.fruitArray) { fruit in
                    Text(fruit.name)
                        .foregroundStyle(.white)
                        .font(.headline)
                }
            }
        }
    }
}

#Preview {
    ViewModelBootcamp()
}
