//
//  ResourceViewController.swift
//  BlueEQ Prototype
//
//  Created by Alexander Gillie on 2/25/19.
//  Copyright © 2019 Alexander Gillie. All rights reserved.
//

import UIKit

class ResourceViewController : UIViewController {

    
    // MARK: Properties
    var selectedDimensionName = ""
    var selectedDimensionResourceList = [Resource]()
    var resourcesList = Shared.shared.getSelectedResources()
    var currentDimensions = Shared.shared.getSelectedDimensions()
    
    
    // MARK: Outlets
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    
    @IBOutlet weak var resourceTableView: UITableView!
    
    // MARK: Actions
    
    @IBAction func onSegmentedControlChange(_ sender: UISegmentedControl) {
        loadTableView(withDimension: currentDimensions[sender.selectedSegmentIndex])
    }
    
    
    // MARK: Lifecycle
    override func viewDidLoad() {
        resourceTableView.delegate = self
        resourceTableView.dataSource = self
        
        loadTableView(withDimension: currentDimensions[0])
        setSegmentedControlTitles()
    }
    
    // MARK: Helpers
    
    private func loadTableView(withDimension dimension: String) {
        selectedDimensionName = dimension
        selectedDimensionResourceList = resourcesList[dimension]!
        resourceTableView.reloadData()
    }
    
    private func setSegmentedControlTitles() {
        segmentedControl.setTitle(currentDimensions[0], forSegmentAt: 0)
        segmentedControl.setTitle(currentDimensions[1], forSegmentAt: 1)
        segmentedControl.setTitle(currentDimensions[2], forSegmentAt: 2)
    }
}

extension ResourceViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return selectedDimensionResourceList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "resourceCell") as! ResourceCell
        
        let resource = selectedDimensionResourceList[indexPath.row]
        cell.resourceData.text = resource.content
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}

extension ResourceViewController: UITableViewDelegate {
    
}
