//
//  NotificationItems.swift
//  fitnesx
//
//  Created by Singularity - Jewel Rana on 26/4/23.
//

import SwiftUI

struct NotificationItems: View {
    var body: some View {
        VStack {
            HStack{
                
                VStack{
                    Image(uiImage: UIImage(named: "food")!)
                        .resizable()
                        .frame(width: 40,height: 40)
                        .padding()
                    
                }
                .background(Color("bg1"))
                .clipShape(Circle())
                .padding(.trailing,10)
                
                VStack(alignment: .leading){
                    Text("Hey, it’s time for lunch")
                        .foregroundColor(.black)
                        .fontWeight(.bold)
                    Text("About 1 minutes ago")
                        .foregroundColor(Color("subtitle"))
                    
                    
                }
                Spacer()
                
                Image(uiImage: UIImage(named: "more")!)
            }
//            Divider()
        }
      
    }
}

struct NotificationItems_Previews: PreviewProvider {
    static var previews: some View {
        NotificationItems()
    }
}
