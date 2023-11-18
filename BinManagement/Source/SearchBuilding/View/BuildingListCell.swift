//
//  BuildingListCell.swift
//  BinManagement
//
//  Created by hwijinjeong on 2023/11/15.
//

import UIKit
import SnapKit
import Then

final class BuildingListCell: UICollectionViewCell, Identifiable {
    static let identifier = "BuildingListCell"

    private let borderView = UIView().then {
        $0.backgroundColor = UIColor.customColor.customSuperLightGray
    }
    
    let imageView = UIImageView().then {
        $0.image = UIImage(named: "")
        $0.contentMode = .scaleAspectFit
    }
    
    private let buildingNameLabel = UILabel().then {
        $0.textColor = .black
        $0.font = UIFont.systemFont(ofSize: 17)
        $0.text = "인하대학교 60주년기념관"
    }
    
    private let informationLabel = UILabel().then {
        $0.textColor = .systemGreen
        $0.font = UIFont.systemFont(ofSize: 14)
        $0.text = "현재 쓰레기통 공간이 여유롭습니다"
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func layout() {
        imageView.layer.masksToBounds = true
        imageView.layer.cornerRadius = 15
        
        addSubviews([
            borderView,
            imageView,
            buildingNameLabel,
            informationLabel
        ])
        
        borderView.snp.makeConstraints{
            $0.height.equalTo(1)
            $0.leading.bottom.trailing.equalToSuperview()
        }
        
        imageView.snp.makeConstraints{
            $0.width.height.equalTo(75)
            $0.trailing.equalToSuperview().offset(-20)
            $0.centerY.equalToSuperview()
        }
        
        buildingNameLabel.snp.makeConstraints {
            $0.top.equalTo(imageView.snp.top).offset(3)
            $0.leading.equalToSuperview().offset(20)
        }
        
        informationLabel.snp.makeConstraints {
            $0.top.equalTo(buildingNameLabel.snp.bottom).offset(5)
            $0.leading.equalTo(buildingNameLabel)
        }
    }
}

extension BuildingListCell {
    func configure(with building: Building) {
        imageView.image = UIImage(named: building.imageName)
        buildingNameLabel.text = building.name
        informationLabel.text = building.information
    }
}
