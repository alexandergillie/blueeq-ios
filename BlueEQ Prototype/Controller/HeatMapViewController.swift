//
//  HeatMapViewController.swift
//  BlueEQ Prototype
//
//  Created by Alexander Gillie on 2/25/19.
//  Copyright © 2019 Alexander Gillie. All rights reserved.
//

import UIKit

class HeatMapViewController: UITableViewController {
    
    var sectionData: [Int: [String]] = [:]
    let sections: [String] = Shared.shared.getParentDimensions()


    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        initSectionData()
    }
    
    
    private func initSectionData() {
        for section in sections {
            let index = sections.index(of: section)!
            sectionData[index] = Shared.shared.getChildDimensions(ofParent: section)
        }
    }
    
    
    // MARK: Table View Delegate functions
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "sectionHeader") as! HeatMapHeaderCell
        
        let dimensionName = sections[section]
        let dimensionScore = Shared.shared.getScore(ofDimension: dimensionName)
        cell.dimensionName.text = dimensionName
        cell.dimensionScore.text = String(dimensionScore)
        cell.backgroundColor = getDimensionColor(score: dimensionScore, isHeader: true)
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
       return 60
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int)
        -> Int {
            return (sectionData[section]?.count)!
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int)
        -> String? {
            return sections[section]
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath)
        -> UITableViewCell {
            var cell = tableView.dequeueReusableCell(withIdentifier: "dimensionEntry") as! HeatMapEntryCell
            
            let dimensionName = sectionData[indexPath.section]![indexPath.row]
            let dimensionScore = Shared.shared.getScore(ofDimension: dimensionName)
            cell.dimensionName.text = dimensionName
            cell.dimensionScore.text = String(dimensionScore)
            cell.backgroundColor = getDimensionColor(score: dimensionScore, isHeader: false)
            return cell
    }
    

    
    // MARK: Helpers
    
    private func getDimensionColor(score: Int, isHeader: Bool) -> UIColor {
        
        let ALPHA = isHeader == true ? CGFloat(0.8) : CGFloat(0.2)
        if (score >= 90) { return UIColor.blue.withAlphaComponent(ALPHA)}
        if (score >= 75) { return UIColor.green.withAlphaComponent(ALPHA)}
        if (score >= 60) { return UIColor.yellow.withAlphaComponent(ALPHA)}
        if (score >= 75) { return UIColor.orange.withAlphaComponent(ALPHA)}
        else { return UIColor.red.withAlphaComponent(ALPHA)}
    }
    
}
