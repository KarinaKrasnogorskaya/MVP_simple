//
//  ViewController.swift
//  MVP_simple
//
//  Created by Карина on 01.03.2023.
//

import UIKit

class ViewController: UIViewController {
    
    private var testData: [Crypto] = []
    private let presenter = Presenter()
    
    weak private var viewOutputDelegate: ViewOutputDelegate?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.setViewInputDelegate(viewInputDelegate: self)
        self.viewOutputDelegate = presenter
        self.viewOutputDelegate?.getData()
    }
}

extension ViewController: ViewInputDelegate {
    func setupInitiolState() {
        <#code#>
    }
    
    func setupData(with testData: ([Crypto])) {
        self.testData = testData
    }
    
    func displayData(i: Int) {
        <#code#>
    }
    
    
}

