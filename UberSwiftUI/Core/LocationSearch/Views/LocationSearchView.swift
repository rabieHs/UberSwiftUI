//
//  LocationSearchView.swift
//  UberSwiftUI
//
//  Created by rabie houssaini on 17/7/2024.
//

import SwiftUI

struct LocationSearchView: View {
    @State private var startLocationText = ""
    @State private var destinationLocationText = ""
    var body: some View {
        VStack{
            // header
            
            HStack{
                VStack{
                    Circle()
                        .fill(Color(.systemGray3))
                        .frame(width: 6,height: 6)
                    Rectangle()
                        .fill(Color(.systemGray3))
                        .frame(width: 1.5,height: 24)
                    Rectangle()
                        .fill(Color(.black))
                        .frame(width: 6,height: 6)
                }
                
                VStack{
                    TextField("Current Location",text: $startLocationText)
                        .padding(.leading,6)
                        .frame(height: 32)
                        .background(Color(.systemGroupedBackground))
                        .padding(.trailing)
                    TextField("Where to?",text: $destinationLocationText)
                        .padding(.leading,6)
                        .frame(height: 32)
                        .background(Color(.systemGray4))
                        .padding(.trailing)
                }
                
            }
            .padding(.horizontal)
            .padding(.top,60)
            Divider()
                .padding(.top)
            
            //list
            
            ScrollView{
                VStack(alignment:.leading){
                    ForEach(0 ..< 20){_ in
                        
                        LocationSearchResultCell()
                    }
                }
            }
        }
        .background(.white)
    }
}

#Preview {
    LocationSearchView()
}
