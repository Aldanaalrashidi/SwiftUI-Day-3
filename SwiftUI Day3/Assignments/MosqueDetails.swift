//
//  MosqueDetails.swift
//  SwiftUI Day3
//
//  Created by tahani alrashidi on 8/23/20.
//  Copyright © 2020 Aldana Al-Rashidi. All rights reserved.
//

import SwiftUI

struct MosqueDetails: View {
    var mosque: Mosque
    var body: some View {
        ZStack(alignment: .top){
            VStack{
                ZStack{
                    ZStack{
                        Image(mosque.mosqueName)
                            .resizable()
                            .frame(width: 420, height: 330)
                            .edgesIgnoringSafeArea(.all)
                        Text(mosque.mosqueName)
                            .foregroundColor(.white)
                            .font(.system(size: 45))
                            .bold()
                            .padding(.bottom, 250)
                    }
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack(spacing: 20){
                            ForEach(mosque.mosqueImam, id: \.self){ (imam: String) in
                                Image(imam).resizable().scaledToFit().frame(width: 160).clipShape(Circle())
                                    .overlay(Circle().stroke(Color.white, lineWidth: 4))
                                    
                            }
                        }
                    }.offset(x: 0, y: 50)
                }
                ScrollView{
                HStack{
                    VStack(spacing: 45){
                        ForEach(times, id: \.self){
                            time in Text(time)
                                .font(.system(size: 30))
                                .fontWeight(.medium)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        }
                    }
                    Spacer()
                    VStack(spacing: 45){
                        ForEach(prayers, id: \.self){
                            prayer in Text(prayer)
                                .font(.system(size: 30))
                                .fontWeight(.medium)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        }
                    }
                }
                }.padding()
            }
        }
    }
}


struct MosqueDetails_Previews: PreviewProvider {
    static var previews: some View {
        MosqueDetails(mosque: mosques[0])
    }
}
