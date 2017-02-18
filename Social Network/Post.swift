//
//  Post.swift
//  Social Network
//
//  Created by Spencer Forrest on 19/02/2017.
//  Copyright © 2017 Spencer Forrest. All rights reserved.
//

import Foundation

class Post {
    private var _id: String!
    private var _caption: String!
    private var _likes: Int!
    private var _imgUrl: String!
    
    var id: String {
        get {
            return _id
        }
    }
    
    var caption: String {
        get {
            return _caption
        }
    }
    
    var imgUrl: String {
        get {
            return _imgUrl
        }
    }
    
    var likes: Int {
        get {
            return _likes
        }
    }
    
    init(caption: String, imgUrl: String, likes: Int) {
        _caption = caption
        _imgUrl = imgUrl
        _likes = likes
    }
    
    init(id: String, postData: [String:AnyObject]){
        
        _id = id
        
        if let caption = postData["caption"] as? String {
            _caption = caption
        }
        
        if let imgUrl = postData["imgUrl"] as? String {
            _imgUrl = imgUrl
        }
        
        if let likes = postData["likes"] as? Int {
            _likes = likes
        }
    }
}
