//
//  Mosque.swift
//  SwiftUI Day3
//
//  Created by tahani alrashidi on 8/23/20.
//  Copyright © 2020 Aldana Al-Rashidi. All rights reserved.
//

import Foundation
import SwiftUI

struct Mosque: Identifiable,Hashable {
    var mosqueName: String
    var mosqueLocation: String
    var mosqueImam: [String]
    var id = UUID()
}

let alimamSadeq = Mosque(mosqueName: "الإمام الصادق", mosqueLocation: "مدينة الكويت", mosqueImam: ["عثمان الخميس", "فهد الكندري", "مشاري العفاسي"])

let alhadad = Mosque(mosqueName: "الحداد", mosqueLocation: "مدينة الكويت", mosqueImam: ["عثمان الخميس", "فهد الكندري", "مشاري العفاسي"])

let alsayer = Mosque(mosqueName: "الساير", mosqueLocation: "مدينة الكويت", mosqueImam: ["عثمان الخميس", "فهد الكندري", "مشاري العفاسي"])

let mosques = [alimamSadeq, alhadad, alsayer]

let times = ["3:44 AM", "5:09 AM", "11:46 AM", "3:21 PM", "6:22 PM", "7:45 PM"]

let prayers = ["الفجر", "الشروق", "الظهر", "العصر", "المغرب", "العشاء"]
