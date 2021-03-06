//
//  HeadIconView.swift
//  NetEaseCloudMusic
//
//  Created by Zhengda Lee on 6/18/16.
//  Copyright © 2016 Ampire_Dan. All rights reserved.
//

import UIKit
import SnapKit

class HeadIconView: UIView {
    var image:UIImage? {
        set {
            imageView.image = newValue
        }
        get {
            return imageView.image
        }
    }
    
    var number:Int? {
        set {
            roundNumberLabel.number = newValue
        }
        get {
            return roundNumberLabel.number
        }
    }
    
    var rank:String {
        set {
            rankRoundLabel.rankText = newValue
        }
        get {
            return rankRoundLabel.rankText
        }
    }
    
    
    

    fileprivate lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        return imageView
    }()
    
    
    fileprivate lazy var roundNumberLabel: RoundNumberLabel = {
       let label = RoundNumberLabel()
        return label
    }()
    
    
    fileprivate lazy var rankRoundLabel: RankRoundLabel = {
        let label = RankRoundLabel()
        return label
    }()
    
    init(frame: CGRect, headImageName: String, number: Int, rank: String) {
        super.init(frame: frame)
        imageView.image = UIImage.init(named: headImageName)
        roundNumberLabel.number = number
        rankRoundLabel.rankText = rank
        addSubview(imageView)
        addSubview(roundNumberLabel)
        addSubview(rankRoundLabel)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        imageView.snp.makeConstraints { (make) in
            make.center.equalTo(self.snp.center)
        }
        
        roundNumberLabel.snp.makeConstraints { (make) in
            make.right.equalTo(imageView.snp.right)
            make.top.equalTo(imageView.snp.top)
        }
        
        rankRoundLabel.snp.makeConstraints { (make) in
            make.right.equalTo(imageView.snp.right).offset(-FixedValue.defaultMargin)
            make.bottom.equalTo(imageView.snp.bottom)
        }
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        imageView.image = UIImage.init(named: "second")
        roundNumberLabel.number = number
        rankRoundLabel.rankText = rank
        addSubview(imageView)
        addSubview(roundNumberLabel)
        addSubview(rankRoundLabel)
    }
}
