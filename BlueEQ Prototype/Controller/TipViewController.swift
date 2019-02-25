//
//  TipViewController.swift
//  BlueEQ Prototype
//
//  Created by Alexander Gillie on 2/18/19.
//  Copyright © 2019 Alexander Gillie. All rights reserved.
//

import UIKit

class TipViewController: UIViewController {
    
    var dimensionName = ""
    var tipsList = Shared.shared.getTips(withLabel: "Self-Respect")
    var selectedDimensions = Shared.shared.getSelectedDimensions()
    
    // MARK: Outlets
    
    @IBOutlet weak var tipListTextView: UITextView!
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    // MARK: Actions
    
    @IBAction func indexChanged(_ sender: Any) {
        loadTipView(segmentIndex: segmentedControl.selectedSegmentIndex)
    }
    
    // MARK: Initializers
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setSegmentedControlTitles()
        loadTipView(segmentIndex: 0)
    }
    
    // MARK: Helpers
    
    func setSegmentedControlTitles() {
        segmentedControl.setTitle(selectedDimensions[0], forSegmentAt: 0)
        segmentedControl.setTitle(selectedDimensions[1], forSegmentAt: 1)
        segmentedControl.setTitle(selectedDimensions[2], forSegmentAt: 2)

    }
    
    func loadTipView(segmentIndex: Int) {
        let dimensionToDisplay = selectedDimensions[segmentIndex]
        tipsList = Shared.shared.getTips(withLabel: dimensionToDisplay)
        
        let bullet = "•  "
        let bulletedTipsList = tipsList.map { return bullet + $0 }
        
        var attributes = [NSAttributedString.Key: Any]()
        attributes[.font] = UIFont.preferredFont(forTextStyle: .body)
        attributes[.foregroundColor] = UIColor.darkGray
        
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.headIndent = (bullet as NSString).size(withAttributes: attributes).width
        attributes[.paragraphStyle] = paragraphStyle
        
        let string = bulletedTipsList.joined(separator: "\n")
        tipListTextView.attributedText = NSAttributedString(string: string, attributes: attributes)
    }
}
