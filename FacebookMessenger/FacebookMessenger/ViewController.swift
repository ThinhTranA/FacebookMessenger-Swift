//
//  ViewController.swift
//  FacebookMessenger
//
//  Created by Thinh on 30/9/19.
//  Copyright © 2019 VisualSharp. All rights reserved.
//

import UIKit

class FriendsController: UICollectionViewController, UICollectionViewDelegateFlowLayout {

    private let cellId = "cellId"
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Recent"
        
        collectionView?.backgroundColor = .white;
        collectionView?.alwaysBounceVertical = true
        
        collectionView?.register(FriendCell.self, forCellWithReuseIdentifier: cellId)
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 100)
    }
}

class FriendCell: BaseCell {
    let profileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.layer.cornerRadius  = 34
        imageView.layer.masksToBounds = true
        return imageView
    }()
    
    let dividerLineView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(white: 0.5, alpha: 0.5)
        return view
    }()
    
    override func setupViews(){
        addSubview(profileImageView)
        addSubview(dividerLineView)
        
        profileImageView.image = UIImage(named: "zuckprofile")
        profileImageView.translatesAutoresizingMaskIntoConstraints = false
        
        dividerLineView.translatesAutoresizingMaskIntoConstraints = false
        
        addConstraintsWithFormat(format:"H:|-12-[v0(68)]", views: profileImageView)
        addConstraintsWithFormat(format:"V:|-12-[v0(68)]", views: profileImageView)
        
        addConstraintsWithFormat(format:"H:|-82-[v0]|", views: dividerLineView)
        
        addConstraintsWithFormat(format:"V:[v0(1)]|", views: dividerLineView)
    }
}

extension UIView{
    func addConstraintsWithFormat(format: String, views: UIView...){
        
        var viewsDictionary = [String: UIView]()
        for (index, view) in views.enumerated(){
            let key = "v\(index)"
            viewsDictionary[key] = view
            view.translatesAutoresizingMaskIntoConstraints  = false
        }
        
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: format, options:  NSLayoutConstraint.FormatOptions(), metrics: nil, views: viewsDictionary))
    }
}

class BaseCell: UICollectionViewCell{
    override init(frame: CGRect){
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder){
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews(){
        backgroundColor = .blue;
    }
}

