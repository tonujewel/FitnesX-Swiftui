//
//  WorkoutTracker.swift
//  fitnesx
//
//  Created by Singularity - Jewel Rana on 27/4/23.
//

import SwiftUI

struct WorkoutTracker: View {
    var body: some View {
        ScrollView{
            
            VStack {
                CustomAppBar()
                Image(uiImage: UIImage(named: "Graph")!)
                    .resizable()
                    .padding()
                    .aspectRatio(contentMode: .fit)
            }
            .background(Color("bg2"))
            
            
            VStack{
                
                Image(uiImage: UIImage(named: "line")!)
                    .renderingMode(.template)
                    .foregroundColor(Color("grey"))
                
                CheckCard(title: "Daily Workout Schedule")
                
                
                TitleItem(title: "Upcoming Workout", subTitle: "See more")
                
                
                
                
            }
            .background(Color("bg3"))
            
            
            
            
        }
        
        
    }
}

struct WorkoutTracker_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutTracker()
    }
}

struct CustomAppBar: View {
    var body: some View {
        HStack {
            VStack {
                Image(uiImage: UIImage(named: "back")!)
                    .padding()
            }
            .background(Color.white)
            .cornerRadius(8)
            .frame(width: 50,height: 50)
            
            Spacer()
            Text("Workout Tracker")
                .fontWeight(.bold)
                .foregroundColor(.white)
                .font(.system(size: 20))
            Spacer()
            
            VStack {
                Image(uiImage: UIImage(named: "doble_dot")!)
                
                    .padding()
                    .frame(width: 50,height: 50)
            }
            .background(Color.white)
            .cornerRadius(8)
            .frame(width: 50,height: 50)
        }
        .padding()
    }
}

struct TitleItem: View {
    @State var title:String
    @State var subTitle:String
    
    var body: some View {
        HStack{
            Text(title)
                .fontWeight(.bold)
                .font(.system(size: 20))
            
            Spacer()
            
            Text(subTitle)
                .foregroundColor(Color.gray)
                .font(.system(size: 20)
                )
        }
        .padding()
    }
}
