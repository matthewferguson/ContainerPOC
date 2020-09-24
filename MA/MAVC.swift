//
//  MAVC.swift
//  containerviewsPOC
//
//  Created by Matthew Ferguson on 9/11/20.
//

import Foundation
import UIKit

class MAVC: UIViewController {
    
    @IBOutlet weak var  collection: UICollectionView?
    let dataSource = ["French Stewart","Bruce Willis"]
    
    //MARK:- Life Cycle
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.collection?.isHidden = true
    }

    
    override func viewWillAppear(_ animated: Bool) {
        
        let delay = DispatchTime.now() + .seconds(1)
        DispatchQueue.main.asyncAfter(deadline: delay) {
            
            self.collection?.isHidden = false
            self.collection?.reloadData()
            
        }
        
    }
    
    
    override func viewDidAppear(_ animated: Bool) {

    }
    
    
    override func viewWillDisappear(_ animated: Bool) {
        
    }

    
}



extension MAVC: UICollectionViewDataSource {
    
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataSource.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
        
        print("indexPath.row == \(indexPath.row)")
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Account_Cell",for: indexPath) as! CustomCell
        
        let specificName = dataSource[indexPath.row]
        cell.name?.text = specificName
        
        return cell
    }
    
}




extension MAVC: UICollectionViewDelegate
{
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath)
    {
        print("indexPath.item = \(indexPath.item)")
        print("indexPath.section = \(indexPath.section)")
        let ds = dataSource[indexPath.item]
        print("dataSource == \(ds)")
    }
}
