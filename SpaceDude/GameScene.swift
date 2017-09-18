//
//  GameScene.swift
//  SpaceDude
//
//  Created by Stefan Markovic on 9/18/17.
//  Copyright © 2017 Stefan Markovic. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    //override var isUserInteractionEnabled: Bool
    
    let backgroundNode = SKSpriteNode(imageNamed: "Background")
    let playerNode = SKSpriteNode(imageNamed: "Player")
    let orbNode = SKSpriteNode(imageNamed: "PowerUp")
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(size: CGSize) {
        super.init(size: size)
        
        physicsWorld.gravity = CGVector(dx: 0.0, dy: -2.0)
        backgroundColor = SKColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        isUserInteractionEnabled = true
        
        //adding the background
        backgroundNode.size.width = frame.size.width
        backgroundNode.anchorPoint = CGPoint(x: 0.5, y: 0.0)
        backgroundNode.position = CGPoint(x: size.width / 2.0, y: 0.0)
        addChild(backgroundNode)
        
        //add the player
        playerNode.physicsBody = SKPhysicsBody(circleOfRadius: playerNode.size.width / 2)
        playerNode.physicsBody?.isDynamic = true
        playerNode.position = CGPoint(x: size.width / 2, y: size.height / 2)
        playerNode.physicsBody?.linearDamping = 1.0
        playerNode.physicsBody?.allowsRotation = false
        addChild(playerNode)
        
        //add the orb
        orbNode.position = CGPoint(x: 150.0, y: size.height - 25)
        orbNode.physicsBody = SKPhysicsBody(circleOfRadius: orbNode.size.width / 2)
        orbNode.physicsBody?.isDynamic = false
        addChild(orbNode)

    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        playerNode.physicsBody?.applyImpulse(CGVector(dx: 0.0, dy: 40.0))
    }
    
}














