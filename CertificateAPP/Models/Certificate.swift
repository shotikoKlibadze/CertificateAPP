//
//  Certificate.swift
//  CertificateAPP
//
//  Created by Shotiko Klibadze on 02.05.23.
//

import Foundation

struct Certificate: Identifiable, Decodable, Hashable {
    var id: String
    var course: String
    var date: String
    var logo: String
    var instructor: String
}

