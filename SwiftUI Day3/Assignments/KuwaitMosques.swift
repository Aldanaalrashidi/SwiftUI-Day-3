//
//  KuwaitMosques.swift
//  SwiftUI Day3
//
//  Created by tahani alrashidi on 8/23/20.
//  Copyright © 2020 Aldana Al-Rashidi. All rights reserved.
//

import SwiftUI

struct KuwaitMosques: View {
    var body: some View {
       NavigationView{
            List(mosques){ mosque in
                NavigationLink(destination: MosqueDetails(mosque: mosque)) {
                    MosqueRow(mosque: mosque)
                }
            }.navigationBarTitle("مساجد الكويت")
        }.accentColor(.white)
    }
}

struct KuwaitMosques_Previews: PreviewProvider {
    static var previews: some View {
        Group{
        KuwaitMosques()
            .previewDisplayName("Kuwait Mosques")
            .environment(\.colorScheme, .dark)
            MosqueRow(mosque: mosques[0])
                .previewLayout(.sizeThatFits)
                .previewDisplayName("Mosque Row")
        }

    }
}
