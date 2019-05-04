//
//  LineGraphController.swift
//  STL
//
//  Created by Kimberly Zhu on 4/29/19.
//  Copyright © 2019 UCB-Team-Tech. All rights reserved.
//

import Foundation
import UIKit
import Charts

class LineGraphViewController: UIViewController {
    @IBOutlet weak var backButton: UIButton!
    
    @IBOutlet weak var lineChartView: LineChartView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setChartValues();
    }
    @IBAction func backButton(_ sender: Any) {
       self.dismiss(animated: true)
    }
    
    func backAction() {
        self.navigationController?.popViewController(animated: true)
    }
    
    func setChartValues(_ count : Int = 20) {
        let values = (0..<count).map { (i) -> ChartDataEntry in
            let val = Double(arc4random_uniform(UInt32(count)) + 3)
            return ChartDataEntry(x: Double(i), y: val)
        }
        
        let set1 = LineChartDataSet(values: values, label: "DataSet 1")
        let data = LineChartData(dataSet: set1)
        
        self.lineChartView.data = data
        self.lineChartView.animate(yAxisDuration: 1.5)
    }
}
