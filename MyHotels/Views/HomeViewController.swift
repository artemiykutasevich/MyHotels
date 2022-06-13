//
//  ViewController.swift
//  MyHotels
//
//  Created by Artem Kutasevich on 11.05.22.
//

import UIKit

class HomeViewController: UIViewController {
    var myCollectionView: UICollectionView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // MARK: - Title
        
        let title = UILabel()
        title.text = "Hello, Daniel"
        title.font = UIFont(name: ProjectFonts.titleFont, size: ProjectFonts.titleFontSize)
        view.addSubview(title)
        
        title.translatesAutoresizingMaskIntoConstraints = false
        title.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        title.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 30).isActive = true
        title.topAnchor.constraint(equalTo: view.topAnchor, constant: 50).isActive = true
        
        // MARK: - SearchBar
        
        let searchBar = UISearchBar()
        searchBar.searchBarStyle = .minimal
        searchBar.placeholder = "Search"
        view.addSubview(searchBar)
        
        searchBar.translatesAutoresizingMaskIntoConstraints = false
        searchBar.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        searchBar.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        searchBar.topAnchor.constraint(equalTo: title.bottomAnchor, constant: 10).isActive = true
        
        // MARK: - Collection View
        
        let layout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        layout.itemSize = CGSize(width: 60, height: 60)
        
        myCollectionView = UICollectionView(frame: self.view.frame, collectionViewLayout: layout)
        myCollectionView?.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "MyCell")
        view.addSubview(myCollectionView ?? UICollectionView())
        
        myCollectionView?.translatesAutoresizingMaskIntoConstraints = false
        myCollectionView?.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        myCollectionView?.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        myCollectionView?.topAnchor.constraint(equalTo: searchBar.bottomAnchor, constant: 20).isActive = true
        myCollectionView?.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        myCollectionView?.dataSource = self
        myCollectionView?.delegate = self
    }
}

extension HomeViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 9
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let myCell = collectionView.dequeueReusableCell(withReuseIdentifier: "MyCell", for: indexPath)
        myCell.backgroundColor = .black
        return myCell
    }
}

#if DEBUG
import SwiftUI

struct HomeViewControllerPreview: PreviewProvider {
    static var previews: some View {
        HomeViewController().toPreview()
    }
}
#endif
