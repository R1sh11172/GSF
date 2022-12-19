//
//  ContentView.swift
//  Shared
//
//  Created by Rishi Aniga on 12/17/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var showMenu = false
    @State var cartButton = false
    @State var searchText = ""
    
    var body: some View {
        NavigationView {
            
            GeometryReader { geometry in
                ZStack(alignment: .leading) {
                    if self.showMenu {
                        MenuView()
                            .frame(width: geometry.size.width/2)
                            .transition(.move(edge: .leading))
                    }
                    if self.cartButton {
                        CartView()
                            //.frame(width: geometry.size.width/2)
                    }
                }
                List {
                    
                }
                .searchable(text: $searchText)
            }
            .navigationBarTitle("Hamburger Menu", displayMode: .inline)
            .navigationBarItems(leading: (
                Button(action: {
                    withAnimation {
                        self.showMenu.toggle()
                    }
                }) {
                    Image(systemName: "line.horizontal.3")
                        .imageScale(.large)
                }
                
            ), trailing: (
                Button(action: {
                    withAnimation {
                        self.cartButton.toggle()
                    }
                }) {
                    Image(systemName: "cart")
                        .imageScale(.large)
                }
            ))
            
        }
        TabView {
            ViewA(scrums: DailyScrum.sampleData)
                .tabItem() {
                    Text("Home")
                }
            ViewB()
                .tabItem() {
                    Text("Shop")
                }
            ViewC()
                .tabItem() {
                    Text("Profile")
                }
        }
    }
}

struct MainView: View {
    
    @Binding var showMenu: Bool
    
    
    var body: some View {
        Button(action: {
            withAnimation {
                self.showMenu = true
            }
        }) {
            Text("")
        }
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
