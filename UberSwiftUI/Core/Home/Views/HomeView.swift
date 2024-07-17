//
//  HomeView.swift
//  UberSwiftUI
//
//  Created by rabie houssaini on 17/7/2024.
//

import SwiftUI

struct HomeView: View {
    @State  var showLocationSearchView = false
    
    var body: some View {
        ZStack(alignment:.top){
            
            UberMapViewRepresentable()
                .ignoresSafeArea()
            if showLocationSearchView {
                LocationSearchView()

            }else{
                LocationSearchActivationView()
                    .padding(.top,55)
                    .onTapGesture {
                        withAnimation(.spring) {
                            showLocationSearchView.toggle()

                        }
                    }
                    }
            MapViewActionbutton(showLocationSearchView: $showLocationSearchView)
                .padding(.leading)
                .padding(.bottom,10)
            }
            
        }
    }


#Preview {
    HomeView()
}
