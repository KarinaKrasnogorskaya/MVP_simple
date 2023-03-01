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
}

extension Presenter: ViewOutputDelegate {
    func saveData() {
        <#code#>
    }
    
    func getData() {
        <#code#>
    }
    
    
}
