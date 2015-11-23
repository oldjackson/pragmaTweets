//
//  ParsedTweet.swift
//  PragmaTweets
//
//  Created by Lorentz on 23/11/2015.
//  Copyright © 2015 PragProg. All rights reserved.
//

import UIKit

let defaultAvatarURL = NSURL(string: "https://abs.twimg.com/sticky/default_profile_images/" + "default_profile_6_200x200.png")

class ParsedTweet: NSObject {

   var tweetText : String?
   var userName : String?
   var createdAt : String?
   var userAvatarURL : NSURL?
   
   init(tweetText : String?, userName : String?, createdAt : String?, userAvatarURL : NSURL?)
   {
      super.init()
      self.tweetText = tweetText
      self.userName = userName
      self.createdAt = createdAt
      self.userAvatarURL = userAvatarURL
   }
   
   override init()
   {
      super.init()
   }

}
