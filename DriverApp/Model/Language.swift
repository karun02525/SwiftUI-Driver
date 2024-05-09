//
//  Language.swift
//  DriverApp
//
//  Created by Karun Kumar on 09/05/24.
//

import Foundation

struct Language : Codable,Hashable,Identifiable {
    var id:Int
    let code:String
    let name:String
    var isSelected:Bool
}

extension Language {
    static var MOCK_LANGAUGES:[Language] = [
        Language(id: 1, code: "en", name: "ENGLISH",isSelected: true),
           Language(id: 2, code: "hi", name: "हिंदी",isSelected: false),
           Language(id: 3, code: "mr", name: "मराठी",isSelected: false),
           Language(id: 4, code: "gu", name: "ગુજરાતી",isSelected: false),
           Language(id: 5, code: "tl", name: "অসমীয়া",isSelected: false),
           Language(id: 6, code: "ta", name: "বাংলা",isSelected: false),
           Language(id: 7, code: "ml", name: "മലയാളം",isSelected: false),
        ]
}
