//
//  DashboardScreen.swift
//  fitnesx
//
//  Created by Singularity - Jewel Rana on 18/4/23.
//

import SwiftUI

struct DashboardScreen: View {
    
    @State var selectedTab: String = "Home"
    var body: some View {
        VStack(alignment:.leading){
            HStack{
                VStack{
                    
                    Text("Welcome Back,")
                        .foregroundColor(Color(hex: 0xFFADA4A5))
                    
                    
                    Text("Stefani Wong")
                        .foregroundColor(Color.black)
                        .fontWeight(.heavy)
                }
                Spacer()
                VStack{
                    Image(uiImage: UIImage(named: "Notification")!)
                        .frame(width: 40,height: 40)
                        .background(Color(hex:0xFFF7F8F8))
                        .cornerRadius(12)
                }
                
            }
            .padding(.leading,20)
            .padding(.trailing,20)
            ZStack{
                Image(uiImage: UIImage(named: "Banner")!)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                HStack{
                    VStack(alignment: .leading){
                        Text("BMI (Body Mass Index)")
                            .foregroundColor(.white)
                            .fontWeight(.heavy)
                            .padding(.bottom,10)
                        Text("You have a normal weight")
                            .foregroundColor(.white)
                        
                        Text("View More")
                            .frame(height: 50)
                            .padding(.leading,20)
                            .padding(.trailing,20)
                            .background(LinearGradient(gradient: Gradient(colors: [Color(hex:0xffEEA4CE),Color(hex:0xffC58BF2)]), startPoint: .leading, endPoint: .trailing))
                            .cornerRadius(30)
                            .foregroundColor(.white)
                        
                    }
                    
                    Image(uiImage: UIImage(named: "pie")!)
                        .padding(.leading)
                }
                
            }
            CheckCard(title: "Today Target")
            
            VStack{ }.frame(height: 20)
            Text("Activity Status")
                .font(.system(size: 20))
                .fontWeight(.bold)
                .padding(.leading,20)
                .padding(.trailing,20)
            
            
            Spacer()
            CustomTabBar(selectedTab: $selectedTab)
                .background(Color.white)
                .shadow(color: Color.black.opacity(0.04), radius: 5,x: 5,y: -3)
        }
//        .background(Color(hex: 0xFFF7F8F8))
    }
}

struct DashboardScreen_Previews: PreviewProvider {
    static var previews: some View {
        DashboardScreen()
    }
}

struct CheckCard: View {
    @State var title:String
    var body: some View {
        VStack{
            HStack{
                Text(title)
                    .foregroundColor(.black)
                Spacer()
                
                VStack{
                    Text("Check")
                        .foregroundColor(.white)
                        .padding(.leading,20)
                        .padding(.trailing,20)
                        .padding(.top,10)
                        .padding(.bottom,10)
                }
                
                .background(LinearGradient(gradient: Gradient(colors: [Color(hex:0xff9DCEFF),Color(hex:0xff92A3FD)]), startPoint: .leading, endPoint: .trailing))
                .cornerRadius(25)
                .foregroundColor(.white)
                
            }
            .frame(maxWidth: .infinity)
            .padding(20)
            .background(Color(hex:0xFFF0F3FF))
            .cornerRadius(25)
            
        }
        .padding(.trailing,20)
        .padding(.leading,20)
    }
}
