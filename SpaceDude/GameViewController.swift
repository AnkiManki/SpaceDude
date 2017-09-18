//
//  GameViewController.swift
//  SpaceDude
//
//  Created by Stefan Markovic on 9/18/17.
//  Copyright © 2017 Stefan Markovic. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {

    var scene: GameScene!
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Configure the main view
        let skView = view as! SKView
        skView.showsFPS = true
        
        //Create and configure our game scene
        scene = GameScene(size: skView.bounds.size)
        scene.scaleMode = .aspectFill
        
        //Show scene
        skView.presentScene(scene)
        
    }

}

























