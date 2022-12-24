//
//  ContentView.swift
//  Shared
//
//  Created by Rishi Aniga on 12/19/22.
//

import SwiftUI

struct Home: View {
    
    @StateObject var HomeModel = HomeViewModel()
    
    var body: some View {
        
        VStack(spacing: 10){
            HStack(spacing: 15) {
                
                Button(action: {}, label: {
                    Image(systemName: "line.horizontal.3")
                        .font(.title)
                        .foregroundColor(.blue)
                })
                Text(HomeModel.userLocation == nil ? "Locating..." : "Deliver To")
                    .foregroundColor(.black)
                
                Text(HomeModel.userAddress)
                    .font(.caption)
                    .fontWeight(.heavy)
                    .foregroundColor(.blue)
            }
            .padding([.horizontal, .top])
            
            Divider()
            
            HStack(spacing: 15){
                TextField("Search", text: $HomeModel.search)
                
                if HomeModel.search != ""{
                    Button(action: {}, label: {
                        Image(systemName: "magnifyingglass")
                            .font(.title2)
                            .foregroundColor(.gray)
                    })
                    .animation(.easeIn)
                }
            }
            .padding(.horizontal)
            .padding(.top,10)
            
            Divider()
            
            Spacer()
        }
        .onAppear(perform: {
            HomeModel.locationManager.delegate = HomeModel
            HomeModel.locationManager.requestWhenInUseAuthorization()
        })
    }
}

