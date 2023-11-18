//
//  MyPageViewController.swift
//  BinManagement
//
//  Created by hwijinjeong on 2023/11/16.
//

import UIKit
import SnapKit
import Then

class MyPageViewController: UIViewController {
    
    private lazy var imageView = UIImageView().then {
        $0.image = UIImage(systemName: "face.smiling.inverse")?
            .withTintColor(UIColor.customColor.customSuperLightGray, renderingMode: .alwaysOriginal)
    }
    
    private lazy var nicknameLabel = UILabel().then {
        $0.textColor = .black
        $0.font = UIFont.boldSystemFont(ofSize: 24)
        $0.text = "R9QL2E46"
    }
    
    private lazy var editInfoBtn = UIButton()
    
    private lazy var borderView = UIView().then {
        $0.backgroundColor = UIColor.customColor.customSuperLightGray
    }

    private lazy var cleaningAreaLabel = UILabel().then {
        $0.textColor = .black
        $0.font = UIFont.boldSystemFont(ofSize: 20)
        $0.text = "R9QL2E46 님의 담당 구역"
    }
    
    private lazy var buildingImage = UIImageView().then {
        $0.image = UIImage(named: "AnniversaryHall")
        $0.contentMode = .scaleAspectFit
    }
    
    private lazy var buildingnameLabel = UILabel().then {
        $0.textColor = .black
        $0.font = UIFont.systemFont(ofSize: 16)
        $0.text = "인하대학교 60주년기념관"
    }
    
    private lazy var borderView02 = UIView().then {
        $0.backgroundColor = UIColor.customColor.customSuperLightGray
    }
    
    private lazy var logoutBtn = UIButton().then {
        $0.setTitle("로그아웃", for: .normal)
        $0.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        $0.setTitleColor(UIColor.lightGray, for: .normal)
        $0.isEnabled = false
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        config()
    }
    

    private func config() {
        layout()
    }

    
    private func layout() {
        var config = UIButton.Configuration.gray()
        if let originalImage = UIImage(systemName: "chevron.right") {
            // 이미지 크기를 변경
            let resizedImage = originalImage.withTintColor(UIColor.darkGray, renderingMode: .alwaysOriginal)
                                             .resizableImage(withCapInsets: .zero, resizingMode: .stretch)
            
            // 이미지 크기를 원하는 크기로 조절
            let scaledImage = resizedImage.scaleToSize(CGSize(width: 6, height: 10))
            
            // 조절된 이미지를 버튼에 설정
            config.image = scaledImage
        }

        config.imagePlacement = .trailing
        config.imagePadding = 5
        
        var titleAttr = AttributedString.init("회원정보 수정")
        titleAttr.foregroundColor = .darkGray
        titleAttr.font = .systemFont(ofSize: 14.0, weight: .light)
        config.attributedTitle = titleAttr
        config.baseForegroundColor = UIColor.black
        
        editInfoBtn.configuration = config
        
        view.addSubviews([
            imageView,
            nicknameLabel,
            editInfoBtn,
            borderView,
            cleaningAreaLabel,
            buildingImage,
            buildingnameLabel,
            borderView02,
            logoutBtn
        ])
        
        imageView.snp.makeConstraints {
            $0.width.height.equalTo(120)
            $0.top.equalToSuperview().offset(110)
            $0.centerX.equalToSuperview()
        }
        
        nicknameLabel.snp.makeConstraints {
            $0.top.equalTo(imageView.snp.bottom).offset(10)
            $0.centerX.equalToSuperview()
        }
        
        editInfoBtn.snp.makeConstraints {
            $0.width.equalTo(113)
            $0.height.equalTo(25)
            $0.top.equalTo(nicknameLabel.snp.bottom).offset(15)
            $0.centerX.equalToSuperview()
        }
        
        borderView.snp.makeConstraints {
            $0.height.equalTo(10)
            $0.top.equalTo(editInfoBtn.snp.bottom).offset(80)
            $0.leading.trailing.equalToSuperview()
        }
        
        cleaningAreaLabel.snp.makeConstraints {
            $0.top.equalTo(borderView.snp.bottom).offset(30)
            $0.leading.equalToSuperview().offset(20)
        }
        
//        buildingImage,
//        buildingnameLabel,
//        borderView02,
//        logoutBtn
        
        buildingImage.snp.makeConstraints {
            $0.height.equalTo(210)
            $0.top.equalTo(cleaningAreaLabel.snp.bottom).offset(25)
            $0.leading.trailing.equalToSuperview().inset(20)
        }
        
        buildingnameLabel.snp.makeConstraints {
            $0.top.equalTo(buildingImage.snp.bottom).offset(10)
            $0.leading.equalTo(buildingImage)
        }
        
        borderView02.snp.makeConstraints {
            $0.height.equalTo(10)
            $0.top.equalTo(buildingnameLabel.snp.bottom).offset(25)
            $0.leading.trailing.equalToSuperview()
        }
        
        logoutBtn.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.top.equalTo(borderView02.snp.bottom).offset(50)
        }
        
    }

}
