//
//  ViewController.swift
//  The Message App
//
//  Created by Vibol's Macbook Pro on 11/12/18.
//  Copyright © 2018 Vibol Roeun. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    let instuction = Store()

    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var collectionVeiw: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        collectionVeiw.register(UINib(nibName: "instructionCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "instructionCell")
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return instuction.getData().count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionVeiw.dequeueReusableCell(withReuseIdentifier: "instructionCell", for: indexPath) as! instructionCollectionViewCell
        let data = instuction.getData()
        cell.titleLabel.text = data[indexPath.row].title
        cell.subTtileLabel.text = data[indexPath.row].subTitle
        
        return cell
        
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionVeiw.frame.width, height: collectionVeiw.frame.height)
    }
    
    
    @IBAction func startButtonPress(_ sender: Any) {
        
    }
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        var visibleRect = CGRect()
        
        visibleRect.origin = collectionVeiw.contentOffset
        visibleRect.size = collectionVeiw.bounds.size
        
        let visiblePoint = CGPoint(x: visibleRect.midX, y: visibleRect.midY)
        
        guard let indexPath = collectionVeiw.indexPathForItem(at: visiblePoint) else { return }
        print(indexPath[1])
        
        switch indexPath[1] {
        case 0:
            
            imageView.image = UIImage(named: "instruction0")
            break
        case 1:
            imageView.image = UIImage(named: "instruction1")
            break
        case 2:
            imageView.image = UIImage(named: "instruction2")
            break
        case 3:
            imageView.image = UIImage(named: "instruction3")
            break
        default:
            break
        }
        
        
    }
}

