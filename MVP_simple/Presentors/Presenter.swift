//
//  Presenter.swift
//  MVP_simple
//
//  Created by Карина on 01.03.2023.
//

import Foundation

class Presenter {
    weak private var viewInputDelegate: ViewInputDelegate?
    var testData = Crypto.testData
    
    func setViewInputDelegate(viewInputDelegate: ViewInputDelegate?) {
        self.viewInputDelegate = viewInputDelegate
    }
    
    private func loadTestData() {
        self.viewInputDelegate?.setupData(with: self.testData)
     
    }
    
    private func random() {
        let randomCount = Int.random(in: 0 ..< testData.count)
        self.viewInputDelegate?.displayData(i: randomCount)
    }
}

extension Presenter: ViewOutputDelegate {
    
    func getRandomCount() {
        random()
    }
    
    func saveData() {
       
    }
    
    func getData() {
        self.loadTestData()
        self.viewInputDelegate?.setupInitiolState()
    }
    
    
}
