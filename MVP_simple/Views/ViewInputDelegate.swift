//
//  ViewInputDelegate.swift
//  MVP_simple
//
//  Created by Карина on 01.03.2023.
//

import Foundation

protocol ViewInputDelegate: AnyObject {
    func setupInitiolState()
    func setupData(with testData: ([Crypto]))
    func displayData(i: Int)
}
