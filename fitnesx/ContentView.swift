//
//  ContentView.swift
//  fitnesx
//
//  Created by Singularity - Jewel Rana on 9/4/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var firstNameTextField:String = ""
    @State private var  isOn = false
    
    
    var body: some View {
        
        VStack(){
            
            Image(uiImage: UIImage(named: "vector1")!)
            
            Text("Let’s complete your profile")
                .foregroundColor(.black)
                .font(.system(size: 18))
                .bold()
            
            Text("It will help us to know more about you!")
                .foregroundColor(Color(hex:0xFF7B6F72))
                .font(.system(size: 12))
       
            
            HStack{
                Image(uiImage: UIImage(named: "2 User")!)
                Text("Choose Gender")
                    .foregroundColor(Color(hex:0xFFADA4A5))
                    .font(.system(size: 14))
                Spacer()
                Image(uiImage: UIImage(named: "Arrow - Down 2")!)
            }
            .frame(maxWidth: .infinity)
            .padding()
            .background(RoundedRectangle(cornerRadius: 12).fill(Color(hex:0xffF7F8F8)))
            
       
            
            HStack{
                Image(uiImage: UIImage(named: "Calendar")!)
                Text("Date of Birth")
                    .foregroundColor(Color(hex:0xFFADA4A5))
                    .font(.system(size: 14))
                Spacer()
                Image(uiImage: UIImage(named: "Arrow - Down 2")!)
            }
            .frame(maxWidth: .infinity)
            .padding()
            .background(RoundedRectangle(cornerRadius: 12).fill(Color(hex:0xffF7F8F8)))
            
            HStack{
                HStack{
                    Image(uiImage: UIImage(named: "weight-scale 1")!)
                    TextField("Your Weight", text: $firstNameTextField)
                        .foregroundColor(Color(hex:0xFFADA4A5))
                        .font(.system(size: 14))
                    Spacer()
                    
                }
                .frame(maxWidth: .infinity)
                .padding()
                .background(RoundedRectangle(cornerRadius: 12).fill(Color(hex:0xffF7F8F8)))
                
                Text("KG")
                    .bold()
                    .frame(width: 50,height: 50)
                    .foregroundColor(Color("white"))
                    .background(LinearGradient(gradient: Gradient(colors: [Color(hex:0xffC58BF2),Color(hex:0xffEEA4CE)]), startPoint: .leading, endPoint: .trailing))
                    .cornerRadius(15)
            }
            HStack{
                HStack{
                    Image(uiImage: UIImage(named: "Swap")!)
                    TextField("Your Height", text: $firstNameTextField)
                        .foregroundColor(Color(hex:0xFFADA4A5))
                        .font(.system(size: 14))
                    Spacer()
                    
                }
                .frame(maxWidth: .infinity)
                .padding()
                .background(RoundedRectangle(cornerRadius: 12).fill(Color(hex:0xffF7F8F8)))
                
                Text("CM")
                    .bold()
                    .frame(width: 50,height: 50)
                    .foregroundColor(Color("white"))
                    .background(LinearGradient(gradient: Gradient(colors: [Color(hex:0xffC58BF2),Color(hex:0xffEEA4CE)]), startPoint: .leading, endPoint: .trailing))
                    .cornerRadius(15)
            }
            Button{
                print("clicked")
            }label: {
                Text("Next")
                    .bold()
                    .frame(width: 350,height: 50)
                    .foregroundColor(Color("white"))
                    .background(LinearGradient(gradient: Gradient(colors: [Color(hex:0xff9DCEFF),Color(hex:0xff92A3FD)]), startPoint: .leading, endPoint: .trailing))
                    .clipShape(Capsule())
            }
        }
        .background(Color(.white))
        .padding(.all,20)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

