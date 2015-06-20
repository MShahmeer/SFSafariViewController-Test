//
//  ViewController.swift
//  SFSafariViewController
//
//  Created by Muhammad Athar on 20/06/2015.
//  Copyright © 2015 Muhammad Athar. All rights reserved.
//

import UIKit
import SafariServices

class ViewController: UIViewController, SFSafariViewControllerDelegate {

    @IBAction func launchSFSafariViewController(sender: AnyObject) {
        let svc = SFSafariViewController(URL: NSURL(string: "http://waitbutwhy.com/2015/01/artificial-intelligence-revolution-1.html")!, entersReaderIfAvailable: true)
        svc.delegate = self
        self.presentViewController(svc, animated: true, completion: nil)
    }
    
    @IBAction func launchSFSafariVCReaderDisabled(sender: AnyObject) {
        let svc = SFSafariViewController(URL: NSURL(string: "http://waitbutwhy.com/2015/01/artificial-intelligence-revolution-1.html")!, entersReaderIfAvailable: false)
        svc.delegate = self
        self.presentViewController(svc, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func safariViewControllerDidFinish(controller: SFSafariViewController) {
        controller.dismissViewControllerAnimated(true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

