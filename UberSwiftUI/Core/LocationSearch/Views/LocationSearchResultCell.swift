//
//  LocationSearchResultCell.swift
//  UberSwiftUI
//
//  Created by rabie houssaini on 17/7/2024.
//

import SwiftUI

struct LocationSearchResultCell: View {
    var body: some View {
        HStack{
            Image(systemName:"mappin.circle.fill")
                .resizable()
                .foregroundStyle(.blue)
                .tint(.white)
                .frame(width: 40,height: 40)
            
            VStack(alignment:.leading,spacing:4){
                Text("RAbie hs Cofee")
                    .font(.body)
                Text("Bechri souk el ahad kebili")
                    .font(.system(size: 15))
                    .foregroundStyle(.gray)
                Divider()
            }
            .padding(.leading,8)
            .padding(.vertical,8)
        }
        .padding(.leading)
    }
}

#Preview {
    LocationSearchResultCell()
}
