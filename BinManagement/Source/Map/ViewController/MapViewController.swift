//
//  MapViewController.swift
//  BinManagement
//
//  Created by hwijinjeong on 2023/09/23.
//
//

import UIKit
import CoreLocation
import SnapKit
import Then

public let DEFAULT_POSITION = MTMapPointGeo(latitude: 37.450755, longitude: 126.657110)

class MapViewController: UIViewController, MTMapViewDelegate {

    var mapView: MTMapView!
    
    var locationManager: CLLocationManager!
    
    private let header = MapTabHeader(frame: .zero)
    
    private lazy var buildingInfoView = MapBuildingInfoView(height: 230)

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // 지도 불러오기
        mapView = MTMapView(frame: self.view.frame)
        mapView.delegate = self
        mapView.baseMapType = .standard
        self.view.addSubview(mapView)

        // 지도의 중심점, 레벨 설정
        mapView.setMapCenter(MTMapPoint(geoCoord: DEFAULT_POSITION), zoomLevel: -0, animated: true)

        // 위치 권한 요청
        locationManager = CLLocationManager()
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        
        let hitechCenter = MTMapPOIItem()
        hitechCenter.itemName = "하이테크센터"
        hitechCenter.tag = 1
        hitechCenter.mapPoint = MTMapPoint(geoCoord: MTMapPointGeo(latitude: 37.450755, longitude: 126.657110))
        // 마커를 이미지 파일 이름으로 변경
        hitechCenter.customImageName = "GreenMarker"
        hitechCenter.markerType = .customImage
        hitechCenter.markerSelectedType = .customImage
        
        let anniversaryHall = MTMapPOIItem()
        anniversaryHall.itemName = "60주년기념관"
        anniversaryHall.tag = 2
        anniversaryHall.mapPoint = MTMapPoint(geoCoord: MTMapPointGeo(latitude: 37.450891, longitude: 126.654289))
        anniversaryHall.customImageName = "GreenMarker"
        anniversaryHall.markerType = .customImage
        anniversaryHall.markerSelectedType = .customImage
       
        mapView.addPOIItems([hitechCenter])
        mapView.addPOIItems([anniversaryHall])
        
        buildingInfoView.isHidden = true
        
        config()
    }
    
    private func config() {
        layout()
    }
    
    private func layout() {
        view.addSubviews([
            header,
            buildingInfoView
        ])
        
        header.snp.makeConstraints {
            $0.height.equalTo(50)
            $0.top.equalTo(view.safeAreaLayoutGuide)
            $0.leading.trailing.equalTo(view.safeAreaLayoutGuide).inset(20)
        }
        
        buildingInfoView.snp.makeConstraints {
            $0.height.equalTo(250)
            $0.leading.trailing.equalToSuperview().inset(25)
            $0.bottom.equalToSuperview().offset(-60)
        }
    }
    
    func mapView(_ mapView: MTMapView!, updateCurrentLocation location: MTMapPoint!, withAccuracy accuracy: MTMapLocationAccuracy) {
        if let currentLocationPointGeo = location?.mapPointGeo() {
            print("MTMapView updateCurrentLocation (\(currentLocationPointGeo.latitude),\(currentLocationPointGeo.longitude)) accuracy (\(accuracy))")
        }
    }
    
    func mapView(_ mapView: MTMapView, updateDeviceHeading headingAngle: MTMapRotationAngle) {
        print("MTMapView updateDeviceHeading (\(headingAngle)) degrees")
    }
    
    func mapView(_ mapView: MTMapView!, selectedPOIItem poiItem: MTMapPOIItem!) -> Bool {
        // 마커의 tag 값 확인
        let tag = poiItem.tag
        
        switch tag {
        case 1:
            print("마커의 tag가 1인 경우 처리")
            buildingInfoView.buildingLabel.text = "하이테크센터"
            buildingInfoView.imageView.image = UIImage(named: "HitechCenter")
            buildingInfoView.isHidden = false
        case 2:
            print("마커의 tag가 2인 경우 처리")
            buildingInfoView.buildingLabel.text = "60주년기념관"
            buildingInfoView.imageView.image = UIImage(named: "AnniversaryHall")
            buildingInfoView.isHidden = false
        default:
            print("다른 tag 값에 대한 처리")
        }
        
        // 선택 이벤트를 계속 처리할 것인지에 대한 반환 값
        return true
    }

}

extension MapViewController: CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        switch status {
        case .authorizedAlways, .authorizedWhenInUse:
            print("GPS 권한 설정됨")
            DispatchQueue.global().async {
                if CLLocationManager.locationServicesEnabled() {
                    self.mapView.showCurrentLocationMarker = true
                    self.mapView.currentLocationTrackingMode = .onWithoutHeading
                }
            }
        case .restricted, .notDetermined:
            print("GPS 권한 설정되지 않음")
        case .denied:
            print("GPS 권한 요청 거부됨")
        default:
            print("GPS: Default")
        }
    }

}
