//
//  CartView.swift
//  BottomBarAndNavigationView
//
//  Created by Rishi Aniga on 12/18/22.
//

import SwiftUI

struct CartView: View {
    var body: some View {
        VStack(alignment: .trailing) {
            HStack {
                Text("Apple")
                    .foregroundColor(.gray)
                    .font(.headline)
            }
            .padding(.top, 100)
            HStack {
                Text("Orange")
                    .foregroundColor(.gray)
                    .font(.headline)
            }
            .padding(.top, 30)
            HStack {
                Text("Grape")
                    .foregroundColor(.gray)
                    .font(.headline)
            }
            .padding(.top, 30)
            Spacer()
        }
            .padding()
            .frame(maxWidth: .infinity, alignment:
                .trailing)
            .background(Color(red: 32/255, green:
                32/255, blue: 32/255))
            .edgesIgnoringSafeArea(.all)
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
    }
}
