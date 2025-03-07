//
//  LocationSearchActivationView.swift
//  UberSwiftUI
//
//  Created by rabie houssaini on 17/7/2024.
//

import SwiftUI

struct LocationSearchActivationView: View {
    var body: some View {
        HStack{
            Rectangle()
                .fill(.black)
                .frame(width: 8,height: 8)
                .padding(.horizontal)
            Text("Where to?")
                .foregroundStyle(Color(.darkGray))
            Spacer()
        }
        .frame(width: UIScreen.main.bounds.width - 64,height: 50 )
        .background(Rectangle().fill(.white)
            .shadow(radius: 6)
        )
        
    }
}

#Preview {
    LocationSearchActivationView()
}
