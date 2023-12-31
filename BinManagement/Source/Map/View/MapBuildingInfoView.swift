//
//  MapBuildingInfoView.swift
//  BinManagement
//
//  Created by hwijinjeong on 2023/09/30.
//

import UIKit
import SnapKit
import Then

class MapBuildingInfoView: UIView {
    
    let buildingLabel = UILabel().then {
        $0.textColor = .black
        $0.textAlignment = .left
        $0.text = "건물 이름"
        $0.font = UIFont.systemFont(ofSize: 19, weight: .bold)
    }
    
//    let statusLabel = UILabel().then {
//        $0.textColor = .red
//        $0.textAlignment = .left
//        $0.text = "현재 n개의 쓰레기통이 가득 차있습니다"
//        $0.font = UIFont.systemFont(ofSize: 14)
//    }
    
    let imageView = UIImageView().then {
        $0.image = UIImage(named: "AnniversaryHall")
        $0.contentMode = .scaleToFill
    }

    private let shadow: Bool
    
    init(height: CGFloat = 280, shadow: Bool = true) {
        self.shadow = shadow
        super.init(frame: .zero)
        self.backgroundColor = .white
        layout(height: height)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        if shadow {
            addShadow()
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func layout(height: CGFloat) {
        layer.cornerRadius = 10
        
        addSubviews([
            buildingLabel,
//            statusLabel,
            imageView
        ])
        
        buildingLabel.snp.makeConstraints {
            $0.top.leading.equalToSuperview().offset(18)
        }
        
//        statusLabel.snp.makeConstraints {
//            $0.top.equalTo(buildingLabel.snp.bottom).offset(3)
//            $0.leading.equalTo(buildingLabel)
//        }
        
        imageView.snp.makeConstraints {
            $0.top.equalTo(buildingLabel.snp.bottom).offset(20)
            $0.leading.bottom.trailing.equalToSuperview().inset(18)
        }
    }
    
}

