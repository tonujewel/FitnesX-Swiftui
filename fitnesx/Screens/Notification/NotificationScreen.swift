//
//  NotificationScreen.swift
//  fitnesx
//
//  Created by Singularity - Jewel Rana on 26/4/23.
//

import SwiftUI

struct NotificationScreen: View {
    var body: some View {
        VStack{
            HStack{
                VStack{
                    Image(uiImage: UIImage(named: "back")!)
                        .frame(width: 40,height: 40)
                        .background(Color(hex:0xFFF7F8F8))
                        .cornerRadius(12)
                }
                Spacer()
                Text("Notification")
                    .fontWeight(.bold)
                Spacer()
                VStack{
                    Image(uiImage: UIImage(named: "doble_dot")!)
                        .frame(width: 40,height: 40)
                        .background(Color(hex:0xFFF7F8F8))
                        .cornerRadius(12)
                }
                
            }
            
        .padding(.bottom,10)
        .padding(.leading,20)
        .padding(.trailing,20)
            
            List{
                NotificationItems()
                NotificationItems()
                NotificationItems()
                NotificationItems()
                NotificationItems()
            }
            .padding(EdgeInsets(top: -40, leading: -20, bottom: -10, trailing: -20))
            .clipShape(Rectangle())


        }
        
    }
}

struct NotificationScreen_Previews: PreviewProvider {
    static var previews: some View {
        NotificationScreen()
    }
}


