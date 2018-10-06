//
//  DetailViewController.swift
//  Blog Reader
//
//  Created by К.К. on 6.10.18.
//  Copyright © 2018 TeamK. All rights reserved.
//

import UIKit
import WebKit

class DetailViewController: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    
    func configureView() {
        // Update the user interface for the detail item.
        if let detail = detailItem {
            if let postView = self.webView {
                postView.loadHTMLString((detail.value(forKey: "content") as? String)!, baseURL: nil)                
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
    }

    var detailItem: Event? {
        didSet {
            // Update the view.
            configureView()
        }
    }


}

