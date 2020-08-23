//
//  MosqueRow.swift
//  SwiftUI Day3
//
//  Created by tahani alrashidi on 8/23/20.
//  Copyright © 2020 Aldana Al-Rashidi. All rights reserved.
//

import SwiftUI

struct MosqueRow: View {
    var mosque: Mosque
    var body: some View {
        HStack{
            Image(mosque.mosqueName)
                .resizable()
                .scaledToFit()
                .frame(height: 135)
                .clipShape(Circle())
            
            VStack(alignment: .leading){
                Text(mosque.mosqueName)
                    .font(.largeTitle)
                Text(mosque.mosqueLocation)
                    .font(.system(size: 20))
            }
        }.padding(.vertical)
    }
}

struct MosqueRow_Previews: PreviewProvider {
    static var previews: some View {
        MosqueRow(mosque: mosques[0])
    }
}
