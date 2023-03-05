//
//  ViewController.swift
//  MVP_simple
//
//  Created by Карина on 01.03.2023.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var tickerLabel: UILabel!
    @IBOutlet var valueLabel: UILabel!
    @IBAction func buttonPressed(_ sender: Any) {
        self.viewOutputDelegate?.getRandomCount()
    }
    
    private var count = 0
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
        displayData(i: count)
    }
    
    func setupData(with testData: ([Crypto])) {
        self.testData = testData
    }
    
    func displayData(i: Int) {
        if testData.count >= 0 && count <= (testData.count - 1) && count >= 0 {
            nameLabel.text = testData[i].name
            tickerLabel.text = testData[i].ticker
            valueLabel.text = String(testData[i].value)
        } else {
            print("Sorry, no data")
        }
    }
    
    
}

