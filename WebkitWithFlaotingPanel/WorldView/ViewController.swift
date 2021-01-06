//
//  ViewController.swift
//  WorldView
//
//  Created by Copter on 1/12/2563 BE.
//

import UIKit
import WebKit
import FloatingPanel

class ViewController: UIViewController, FloatingPanelControllerDelegate {

    @IBOutlet weak var webView: WKWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let fpc = FloatingPanelController()
        fpc.delegate = self
        guard let contentVC = storyboard?.instantiateViewController(identifier: "content_panel") as? ContentViewController
        else{
            return
        }
        fpc.set(contentViewController: contentVC)
        fpc.addPanel(toParent: self)

        let url = URL(string: "https://www.google.com")
        let request = URLRequest(url: url!)
        webView.load(request)
        //fpc_content

    }


}

