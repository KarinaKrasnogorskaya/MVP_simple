//
//  ViewOutputDelegate.swift
//  MVP_simple
//
//  Created by Карина on 01.03.2023.
//

import Foundation

protocol ViewOutputDelegate: AnyObject {
    func saveData()
    func getData()
    func getRandomCount()
}
