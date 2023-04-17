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
                Image(uiImage: UIImage(named: "Profile")!)
                TextField("First Name", text: $firstNameTextField)
            }
            .padding()
            .background(RoundedRectangle(cornerRadius: 12).fill(Color(hex:0xffF7F8F8)))
            
            
            HStack{
                Image(uiImage: UIImage(named: "Profile")!)
                TextField("Last Name", text: $firstNameTextField)
            }
            .padding()
            .background(RoundedRectangle(cornerRadius: 12).fill(Color(hex:0xffF7F8F8)))
            
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
            
            
            HStack(alignment: .top){
                Toggle(isOn: $isOn) {
                    
                }
                .toggleStyle(iOSCheckboxToggleStyle())
                
                Text("By continuing you accept our Privacy Policy and Term of Use")
                    .foregroundColor(Color(hex: 0xFFADA4A5))
                    .font(.system(size: 14))
            }.padding(.top)
            
            Spacer()
            
            VStack{
                Button{
                    print("clicked")
                }label: {
                    Text("Register")
                        .bold()
                        .frame(width: 350,height: 50)
                        .foregroundColor(Color("white"))
                        .background(LinearGradient(gradient: Gradient(colors: [Color(hex:0xff9DCEFF),Color(hex:0xff92A3FD)]), startPoint: .leading, endPoint: .trailing))
                        .clipShape(Capsule())
                }
                .frame(width: Double.infinity)
                
                
                Text("Or")
                    .foregroundColor(Color(hex: 0xFFADA4A5))
                    .font(.system(size: 14))
                
                HStack{
         
                    VStack{
                        Image(uiImage: UIImage(named: "google")!)
                    }
                    .frame(width: 30,height: 30)
                    .padding()
                    .overlay( /// apply a rounded border
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
                    Text("Already have an account?")
                        .foregroundColor(.black)
                    
                    Text("Login")
                        .foregroundColor(Color(hex: 0xffC58BF2))
                    
                }
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

