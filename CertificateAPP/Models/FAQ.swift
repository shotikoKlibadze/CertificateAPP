//
//  FAQ.swift
//  CertificateAPP
//
//  Created by Shotiko Klibadze on 02.05.23.
//

import Foundation

struct FAQ: Decodable, Identifiable {
    var id: Int
    var question: String
    var answer: String
}
