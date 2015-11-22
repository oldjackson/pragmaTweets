//
//  ViewController.swift
//  PragmaTweets
//
//  Created by Lorentz on 12/10/2015.
//  Copyright © 2015 PragProg. All rights reserved.
//

import UIKit
import Social

public class ViewController : UIViewController {

   func reloadTweets() {
      let url = NSURL(string: "https://twitter.com/oldjackson")
      let urlRequest = NSURLRequest(URL: url!)
      twitterWebView.loadRequest(urlRequest)
   }

   
   @IBAction func handleShowMyTweetsTapped(sender: UIButton) {
      reloadTweets()
   }
   
   @IBOutlet public weak var twitterWebView: UIWebView!
   
   public override func viewDidLoad() {
      super.viewDidLoad()
      self.reloadTweets()
   }

   public override func didReceiveMemoryWarning() {
      super.didReceiveMemoryWarning()
      // Dispose of any resources that can be recreated.
   }

   @IBAction func handleTweetButtonTapped(sender: UIButton) {
      if SLComposeViewController.isAvailableForServiceType(SLServiceTypeTwitter)
      {
         let tweetVC = SLComposeViewController(forServiceType: SLServiceTypeTwitter)
         let message = NSLocalizedString("I just finished the first project in iOS 9 (8) SDK Development. #pragsios8/9", comment: "")
         tweetVC.setInitialText(message)
         presentViewController(tweetVC, animated: true, completion: nil)
         
      }
      else
      {
         print("Can't send tweet")
      }
    }

}

