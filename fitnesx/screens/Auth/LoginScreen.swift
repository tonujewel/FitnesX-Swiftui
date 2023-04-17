//
//  LoginScreen.swift
//  fitnesx
//
//  Created by Singularity - Jewel Rana on 17/4/23.
//

import SwiftUI

struct LoginScreen: View {
    @State var firstNameTextField:String = ""
    
    var body: some View {
        VStack(){
            
            Text("Hey there,")
                .foregroundColor(.black)
                .font(.system(size: 12))
            
            Text("Welcome Back")
                .foregroundColor(.black)
                .font(.system(size: 18))
                .bold()
            
            HStack{
                Image(uiImage: UIImage(named: "Message")!)
                TextField("Email", text: $firstNameTextField)
            }
            .padding()
            .background(RoundedRectangle(cornerRadius: 12).fill(Color(hex:0xffF7F8F8)))
            
            HStack{
                Image(uiImage: UIImage(named: "Lock")!)
                TextField("Password", text: $firstNameTextField)
                Image(uiImage: UIImage(named: "Hide-Password")!)
            }
            .padding()
            .background(RoundedRectangle(cornerRadius: 12).fill(Color(hex:0xffF7F8F8)))
            .padding(.bottom,20)
            
            
            Text("Forgot your password?")
                .foregroundColor(Color(hex:0xFFADA4A5))
                .font(.system(size: 14))
                .underline()
            
            Spacer()
            
            VStack{
                Button{
                    print("clicked")
                }label: {
                    HStack{
                        Image(uiImage: UIImage(named: "Login")!)
                            .foregroundColor(.red)
                        Text("Login")
                            .bold()
                            .foregroundColor(Color("white"))
                    }
                    
                }
                .frame(maxWidth: .infinity,minHeight: 50)
                .background(LinearGradient(gradient: Gradient(colors: [Color(hex:0xff9DCEFF),Color(hex:0xff92A3FD)]), startPoint: .leading, endPoint: .trailing))
                .clipShape(Capsule())
                
                
                Text("Or")
                    .foregroundColor(Color(hex: 0xFFADA4A5))
                    .font(.system(size: 14))
                
                HStack{
                    
                    VStack{
                        Image(uiImage: UIImage(named: "google")!)
                    }
                    .frame(width: 30,height: 30)
                    .padding()
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color(hex: 0xffDDDADA), lineWidth: 2)
                    )
                    .padding(.trailing)
                    
                    VStack{
                        Image(uiImage: UIImage(named: "facebook")!)
                    }
                    .frame(width: 30,height: 30)
                    .padding()
                    .overlay( /// apply a rounded border
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color(hex: 0xffDDDADA), lineWidth: 2)
                    )
                    
                }
                
                HStack{
                    Text("Don’t have an account yet?")
                        .foregroundColor(.black)
                    
                    Text("Register")
                        .foregroundColor(Color(hex: 0xffC58BF2))
                    
                }
            }
            
            
            
        }
        .background(Color(.white))
        .padding(.all,20)
    }
}

struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen()
    }
}
