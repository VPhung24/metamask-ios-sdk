//
//  ViewController.swift
//  metamask-ios-sdk
//
//  Created by Mpendulo Ndlovu on 11/14/2022.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {
    let connectView = ConnectView()

    override func viewDidLoad() {
        super.viewDidLoad()
        let childView = UIHostingController(rootView: connectView)
        addChild(childView)
        childView.view.frame = view.bounds
        view.addSubview(childView.view)
        childView.didMove(toParent: self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
