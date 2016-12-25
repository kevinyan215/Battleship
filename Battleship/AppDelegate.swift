//
//  AppDelegate.swift
//  Battleship
//
//  Created by Kevin Yan on 11/12/16.
//  Copyright © 2016 Kevin Yan. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var player1Model = BattleshipModel()
    var player2Model =  BattleshipModel()
    
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
/*
        //ship2 horizontal
        var k = Int(arc4random_uniform(9))
        var indexRangeStart = 20 + k
        var indexRangeEnd = indexRangeStart + 1
        for i in indexRangeStart...indexRangeEnd{
            let ship2Index = i
            player1Model.ship2.append(ship2Index)
            player1Model.allShipIndex.append(ship2Index)
        }
 */
        
        //ship2 vertical
        var k = Int(arc4random_uniform(9))
        var indexRangeStart = 80 + k
        var indexRangeEnd = indexRangeStart + 11
        for i in stride(from:indexRangeStart, to: indexRangeEnd, by: 10){
            let ship2Index = i
            
            //cellArray[ship3Index] = cellStatus.hit
            player1Model.ship2.append(ship2Index)
            player1Model.allShipIndex.append(ship2Index)
        }
        
        
        //ship33 horizontal
        k = Int(arc4random_uniform(8))
        indexRangeStart = 60 + k
        indexRangeEnd = indexRangeStart + 2
        for i in indexRangeStart...indexRangeEnd{
            let ship33Index = i;
        
            player1Model.ship33.append(ship33Index)
            player1Model.allShipIndex.append(ship33Index)
        }
        
        /*
        //ship3 horizontal
        k = Int(arc4random_uniform(8))
        indexRangeStart = 20 + k
        indexRangeEnd = indexRangeStart + 2
        for i in indexRangeStart...indexRangeEnd{
            let ship3Index = i;
            
            player1Model.ship3.append(ship3Index)
            player1Model.allShipIndex.append(ship3Index)
        }
        */
        
 
        
         //ship3 vertical
        k = Int(arc4random_uniform(9))
        indexRangeStart = 20 + k
        indexRangeEnd = indexRangeStart + 21
        for i in stride(from:indexRangeStart, to: indexRangeEnd, by: 10){
            let ship3Index = i
            
            //cellArray[ship3Index] = cellStatus.hit
            player1Model.ship3.append(ship3Index)
            player1Model.allShipIndex.append(ship3Index)
        }
        
 
        //ship4
        k = Int(arc4random_uniform(7))
        indexRangeStart = 0 + k
        indexRangeEnd = indexRangeStart + 3
        for i in indexRangeStart...indexRangeEnd{
            let ship4Index = i
            player1Model.ship4.append(ship4Index)
            player1Model.allShipIndex.append(ship4Index)
        }
 
        //ship5
        k = Int(arc4random_uniform(6))
        indexRangeStart = 110 + k
        indexRangeEnd = indexRangeStart + 4
        for i in indexRangeStart...indexRangeEnd{
            let ship5Index = i
            player1Model.ship5.append(ship5Index)
            player1Model.allShipIndex.append(ship5Index)
        }
        /* ------------------------- player 2 ships ----------------------------*/
        
        
        
        /*
         //ship2 horizontal
         k = Int(arc4random_uniform(9))
         indexRangeStart = 110 + k
         indexRangeEnd = indexRangeStart + 1
         for i in indexRangeStart...indexRangeEnd{
            let ship2Index = i
            player2Model.ship2.append(ship2Index)
            player2Model.allShipIndex.append(ship2Index)
         }
         */
        
        //ship2 vertical
        k = Int(arc4random_uniform(9))
        indexRangeStart = 20 + k
        indexRangeEnd = indexRangeStart + 11
        for i in stride(from:indexRangeStart, to: indexRangeEnd, by: 10){
            let ship2Index = i
            
            //cellArray[ship3Index] = cellStatus.hit
            player2Model.ship2.append(ship2Index)
            player2Model.allShipIndex.append(ship2Index)
        }
        
        
        
        
        
        //ship33 horizontal
        k = Int(arc4random_uniform(8))
        indexRangeStart = 110 + k
        indexRangeEnd = indexRangeStart + 2
        for i in indexRangeStart...indexRangeEnd{
            let ship33Index = i;
            
            player2Model.ship33.append(ship33Index)
            player2Model.allShipIndex.append(ship33Index)
        }
        
        /*
         //ship3 horizontal
         k = Int(arc4random_uniform(8))
         indexRangeStart = 20 + k
         indexRangeEnd = indexRangeStart + 2
         for i in indexRangeStart...indexRangeEnd{
         let ship3Index = i;
         
         player1Mode2.ship3.append(ship3Index)
         player1Mode2.allShipIndex.append(ship3Index)
         }
         */
        
        
        
        //ship3 vertical
        k = Int(arc4random_uniform(9))
        indexRangeStart = 70 + k
        indexRangeEnd = indexRangeStart + 21
        for i in stride(from:indexRangeStart, to: indexRangeEnd, by: 10){
            let ship3Index = i
            
            //cellArray[ship3Index] = cellStatus.hit
            player2Model.ship3.append(ship3Index)
            player2Model.allShipIndex.append(ship3Index)
        }
        
        
        //ship4
        k = Int(arc4random_uniform(7))
        indexRangeStart = 0 + k
        indexRangeEnd = indexRangeStart + 3
        for i in indexRangeStart...indexRangeEnd{
            let ship4Index = i
            player2Model.ship4.append(ship4Index)
            player2Model.allShipIndex.append(ship4Index)
        }
        
        //ship5
        k = Int(arc4random_uniform(6))
        indexRangeStart = 50 + k
        indexRangeEnd = indexRangeStart + 4
        for i in indexRangeStart...indexRangeEnd{
            let ship5Index = i
            player2Model.ship5.append(ship5Index)
            player2Model.allShipIndex.append(ship5Index)
        }
        

        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

