//
//  SwiftUIView.swift
//  SwiftUI Day3
//
//  Created by tahani alrashidi on 8/24/20.
//  Copyright © 2020 Aldana Al-Rashidi. All rights reserved.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        ScrollView(.horizontal){
            HStack{
                Image("الإمام الصادق").resizable().scaledToFit()
                Image("الحداد").resizable().scaledToFit()
                Image("الساير").resizable().scaledToFit()
            }.edgesIgnoringSafeArea(.all)
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
