//
//  WelcomeScreen.swift
//  fitnesx
//
//  Created by Singularity - Jewel Rana on 10/4/23.
//

import SwiftUI

struct WelcomeScreen: View {
    var body: some View {
        HStack{
            VStack {
                
                Spacer()
                Image(uiImage: UIImage(named: "logo")!)
                
                Text("Everybody Can Train")
                    .foregroundColor(Color("textBodyColor"))
                    .font(.system(size: 18))
                
                Spacer()
                
                
                Button{
                    print("clicked")
                }label: {
                    Text("Get started")
                        .bold()
                        .frame(maxWidth: .infinity,minHeight: 50)
                        .foregroundColor(Color("white"))
                        .background(LinearGradient(gradient: Gradient(colors: [Color(hex:0xff9DCEFF),Color(hex:0xff92A3FD)]), startPoint: .leading, endPoint: .trailing))
                        .clipShape(Capsule())
                }
                
                
            }
            .padding()
            
            
        }
    }
}

struct WelcomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreen()
    }
}
