//
//  OnBoardingScreen.swift
//  fitnesx
//
//  Created by Singularity - Jewel Rana on 10/4/23.
//

import SwiftUI

struct OnBoardingScreen: View {
    var body: some View {
      
        VStack{
            
            Image(uiImage: UIImage(named: "on_board_1")!)
            
            VStack(alignment: .leading) {
                Text("Track Your Goal")
                    .font(.system(size: 22))
                    .bold()
                    .padding([.top], 20)
                    .foregroundColor(Color(.black))
                    
                
                Text("Don't worry if you have trouble determining your goals, We can help you determine your goals and track your goals.")
                    .font(.system(size: 14))
                    .foregroundColor(Color("textBodyColor"))
                    .padding([.top], 10)
            }
            .padding()
            
            Spacer()
            
            HStack {
                Text("")
                    .font(.system(size: 22))
                    .bold()
                    .padding([.top], 20)
                
                Spacer()
                    
                
                Button{
                    print("clicked")
                }label: {
                    
                    Image(uiImage: UIImage(named: "arrow_right")!)
                        .frame(width: 50,height: 50)
                        .background(LinearGradient(gradient: Gradient(colors: [Color(hex:0xff9DCEFF),Color(hex:0xff92A3FD)]), startPoint: .leading, endPoint: .trailing))
                        .clipShape(Circle())
                }
            }
            .padding()
            
    
        }
        .background(Color(.white))
    }
}

struct OnBoardingScreen_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingScreen()
    }
}
