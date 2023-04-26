//
//  CustomTabBar.swift
//  fitnesx
//
//  Created by Singularity - Jewel Rana on 25/4/23.
//

import SwiftUI

struct CustomTabBar: View {
    @Binding var selectedTab: String
    @Namespace var animation
    var body: some View {
        HStack(spacing: 0){
            
            if #available(iOS 14.0, *) {
                TabBarButton(animation: animation, image: "Home", selectedTab: $selectedTab)
                TabBarButton(animation: animation, image: "Activity", selectedTab: $selectedTab)
                Button(action: {}, label: {
                    Image("Search")
                        .font(.title2)
                        .foregroundColor(.white)
                        .padding(20)
                        .background(LinearGradient(gradient: Gradient(colors: [Color(hex:0xff9DCEFF),Color(hex:0xff92A3FD)]), startPoint: .leading, endPoint: .trailing))
                        .clipShape(Circle())
                        .shadow(color: Color.black.opacity(0.04), radius: 5,x: 5,y: -3)
                })
                .offset(y:-15)
                TabBarButton(animation: animation, image: "Camera", selectedTab: $selectedTab)
                TabBarButton(animation: animation, image: "Profile", selectedTab: $selectedTab)
            } else {
                // Fallback on earlier versions
            }
        }
    }
}

struct CustomTabBar_Previews: PreviewProvider {
    static var previews: some View {
        DashboardScreen()
    }
}


@available(iOS 14.0, *)
@available(iOS 14.0, *)
struct TabBarButton:View{
    
    var animation: Namespace.ID
    var image:String
    @Binding var selectedTab:String
    
    var body: some View{
        Button(action: {
            withAnimation(.spring()){
                selectedTab = image
            }
        }, label: {
            
            VStack{
                Image (image)
                    .resizable()
                    .renderingMode(.template)
                    .foregroundColor(selectedTab == image ? Color("Primary") : Color.gray)
                    .frame(width: 28, height: 28)
                
                
                if selectedTab == image{
                    Circle()
                        .fill(Color(hex: 0xFFC58BF2))
                        .matchedGeometryEffect(id: "Tab", in: animation)
                        .frame(width: 8,height: 8)
                }

            }
            .frame(maxWidth: .infinity)
            
        })
    }
}
