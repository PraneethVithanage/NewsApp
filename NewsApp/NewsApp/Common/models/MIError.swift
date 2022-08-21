//
//  MIError.swift
//  NewsApp
//
//  Created by MacBook on 2022-08-21.
//

import Foundation

public struct MIError: Error {
    var status: Int?
    var title: String?
    var message: String
}
