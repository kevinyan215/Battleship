			//
//  ViewController.swift
//  Battleship
//
//  Created by Kevin Yan on 11/12/16.
//  Copyright © 2016 Kevin Yan. All rights reserved.
//

import UIKit

class CollectionViewController: UICollectionViewController {

    @IBAction func launchMissile(_ sender: Any) {
        print("BOOM")
       // someCell.backgroundColor = UIColor.black
    }
    
    
    var counter = 1;
    override func viewDidLoad() {
        super.viewDidLoad()
    
        let screen = UIScreen.main.bounds
        let SCREEN_WIDTH = screen.size.width
        //let screenHeight = screen.size.height
    
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 50, left: 5, bottom: 0, right: 5)
        layout.itemSize = CGSize(width: SCREEN_WIDTH / 11, height: SCREEN_WIDTH / 11)
        layout.minimumInteritemSpacing = 1
        layout.minimumLineSpacing = 1  //row spacing
        collectionView!.collectionViewLayout = layout
        
        print("view did load")
    }


    //set number of cells to 100
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        print("set to 100")
        return 100
    }
    
    
    //make 100 cells
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        print("print boxes")
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as UICollectionViewCell
        cell.contentView.backgroundColor = UIColor.blue
        cell.tag = counter;
        print(cell.tag)
        counter = counter + 1
        return cell
    }
    
   
   //set the footer
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        
        print("reusable view")
        let footerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "FooterViewID", for: indexPath)
        return footerView
    }
    
    //must set the footer to some size for it to show
     func collectionView(_ collectionView: UICollectionView,
                                 layout collectionViewLayout: UICollectionViewLayout,
                                 referenceSizeForFooterInSection section: Int) -> CGSize{
        return CGSize(width: 10, height: 40)
    }
    
    
/*
    var largePhotoIndexPath: NSIndexPath? {
        didSet {
            //2
            var indexPaths = [IndexPath]()
            if let largePhotoIndexPath = largePhotoIndexPath {
                indexPaths.append(largePhotoIndexPath)
            }
            if let oldValue = oldValue {
                indexPaths.append(oldValue)
            }
            //3
            collectionView?.performBatchUpdates({
                self.collectionView?.reloadItems(at: indexPaths)
            }) { completed in
                //4
                if let largePhotoIndexPath = self.largePhotoIndexPath {
                    self.collectionView?.scrollToItem(
                        at: largePhotoIndexPath,
                        at: .centeredVertically,
                        animated: true)
                }
            }
        }
    }
    */
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

          
