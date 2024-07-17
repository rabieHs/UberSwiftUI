//
//  MapViewActionbutton.swift
//  UberSwiftUI
//
//  Created by rabie houssaini on 17/7/2024.
//

import SwiftUI

struct MapViewActionbutton: View {
    @Binding var showLocationSearchView: Bool
    var body: some View {
        Button(action: {
            withAnimation(.spring) {
                showLocationSearchView = false

            }
        }, label: {
            Image(systemName: showLocationSearchView ? "arrow.left" : "line.3.horizontal")
                .font(.title2)
                .foregroundStyle(.black)
                .padding()
                .background(.white)
                .clipShape(Circle())
                .shadow(radius: 6)
        })
        .frame(maxWidth: .infinity,alignment: .leading)
    }
}

#Preview {
    MapViewActionbutton(showLocationSearchView:.constant(true))
}
