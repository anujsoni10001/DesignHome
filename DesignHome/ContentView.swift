//
//  ContentView.swift
//  DesignHome
//
//  Created by admin on 3/3/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            Color(red: 1.09, green:0.63, blue:0.52).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack(spacing:15){
                
                VStack {
                    
                    Image("Siddharth pic")
                        .resizable() .frame(width: 180, height: 180).clipShape(Circle()).overlay(Circle().stroke(Color.white,lineWidth:5))
                    
                    Text("Siddharth")
                        .font(.custom("Savoye LET Plain:1.0", size:60))
                        .bold()
                        .foregroundColor(.white)
                    
                    Text("Happy Work Anniversary !!")
                        .foregroundColor(.white)
                        .font(.system(size:25))
                }
                Divider()
                //OveryLay
                VStack(spacing:15) {
                    RoundedRectangle(cornerRadius: 25).fill(Color.white)
                        .frame(height:50)
                        .overlay(HStack{
                            Image(systemName: "envelope").foregroundColor(.green)
                            Text("siddharth@gmail.com")}).padding(.all).frame(height:50)
                    
                    
                    //Alternative
                    ZStack {
                        RoundedRectangle(cornerRadius: 25).fill(Color.white)
                            .frame(height:50)
                        HStack{
                            Image(systemName: "phone.fill").foregroundColor(.green)
                            Text("+91 9123456777")
                        }
                        
                    }.padding(.horizontal)
                    
                }
                    
                Circle().fill(Color.white).padding().frame(width:100, height: 100, alignment: .center)
                        .overlay(Image(systemName: "arrow.forward").resizable().aspectRatio(contentMode: .fit).frame(width: 50, height: 50, alignment: .center))
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



