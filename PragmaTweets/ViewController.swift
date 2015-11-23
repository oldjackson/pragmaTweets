//
//  ViewController.swift
//  PragmaTweets
//
//  Created by Lorentz on 12/10/2015.
//  Copyright © 2015 PragProg. All rights reserved.
//

import UIKit
import Social

public class ViewController : UITableViewController {
   
   var parsedTweets : Array <ParsedTweet> = [
      ParsedTweet(tweetText: "ioS 8 SDK Development now in print. Swift programming FTW!", userName: "@pragprog", createdAt: "2015-11-24 00:20:30", userAvatarURL: defaultAvatarURL),
      ParsedTweet(tweetText: "Math is cool", userName: "@oldjackson", createdAt: "2015-11-24 00:20:30", userAvatarURL: defaultAvatarURL),
      ParsedTweet(tweetText: "Anime is cool", userName: "@invalidname", createdAt: "2015-11-24 00:20:30", userAvatarURL: defaultAvatarURL)
   ]

   func reloadTweets() {
      tableView.reloadData()
      /*let url = NSURL(string: "https://twitter.com/oldjackson")
      let urlRequest = NSURLRequest(URL: url!)
      twitterWebView.loadRequest(urlRequest)*/
   }

   public override func viewDidLoad() {
      super.viewDidLoad()
      reloadTweets()
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
   
   override public func numberOfSectionsInTableView(tableView: UITableView) -> Int
   {
      return 1
   }
  
   override public func tableView(_tableView: UITableView, numberOfRowsInSection section: Int) -> Int
   {
      return parsedTweets.count
   }
   
   override public func tableView (_tableView: UITableView,  cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
   {
      let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: nil)
      let parsedTweet = parsedTweets[indexPath.row]
      cell.textLabel?.text = parsedTweet.tweetText
      
      return cell
   }

}